
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_ie9plus ;
 int run_js_script (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void run_js_tests(void)
{
    run_js_script("jstest.html");
    run_js_script("exectest.html");
    run_js_script("vbtest.html");
    run_js_script("events.html");
    if(is_ie9plus)
        run_js_script("nav_test.html");
    else
        win_skip("Skipping nav_test.html on IE older than 9 (for broken ieframe onload).\n");
}
