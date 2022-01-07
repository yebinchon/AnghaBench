
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int check_p_g_s (char*,int ,char*) ;

__attribute__((used)) static void test_path_get_session(void) {
        check_p_g_s("/user.slice/user-1000.slice/session-2.scope/foobar.service", 0, "2");
        check_p_g_s("/session-3.scope", 0, "3");
        check_p_g_s("/session-.scope", -ENXIO, ((void*)0));
        check_p_g_s("", -ENXIO, ((void*)0));
}
