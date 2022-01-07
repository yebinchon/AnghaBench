
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_DISPONLY ;
 int TEST_NOQUICKACT ;
 int TRUE ;
 scalar_t__ activex_refcnt ;
 int have_container ;
 int no_quickact ;
 int plugin_behavior ;

__attribute__((used)) static void init_test(int behavior)
{
    plugin_behavior = behavior;

    activex_refcnt = 0;
    no_quickact = behavior == TEST_NOQUICKACT || behavior == TEST_DISPONLY;
    have_container = TRUE;
}
