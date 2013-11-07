
#include "sc_helper.h"
#include "sc_memory_headers.h"

#include <stdio.h>

#include <glib.h>

void test1()
{
    sc_addr quest, init;

    sc_helper_resolve_system_identifier("test_question", &quest); //Question node from base
    sc_helper_resolve_system_identifier("question_initiated", &init);
    sc_memory_arc_new(sc_type_arc_pos_const_perm, init, quest);
}

int main(void)
{
    sc_memory_initialize((sc_char *)"repo", (sc_char *)"sctp_config.ini");
    sc_helper_init();
    sc_memory_initialize_ext("extensions");

    GTimer *timer = 0;
    timer = g_timer_new();
    g_timer_start(timer);

    //! Write your code here

    //test1();
    printf("Hello world!");

    g_timer_stop(timer);
    printf((sc_char *)"Time: %f s\n", g_timer_elapsed(timer, 0));
    g_timer_destroy(timer);

    return 0;
}
