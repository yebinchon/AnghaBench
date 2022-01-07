
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 char* SPECIAL_ROOT_SLICE ;
 int check_p_g_u_slice (char*,int ,char*) ;

__attribute__((used)) static void test_path_get_user_slice(void) {
        check_p_g_u_slice("/user.slice", -ENXIO, ((void*)0));
        check_p_g_u_slice("/foobar", -ENXIO, ((void*)0));
        check_p_g_u_slice("/user.slice/user-waldo.slice", -ENXIO, ((void*)0));
        check_p_g_u_slice("", -ENXIO, ((void*)0));
        check_p_g_u_slice("foobar", -ENXIO, ((void*)0));
        check_p_g_u_slice("foobar.slice", -ENXIO, ((void*)0));
        check_p_g_u_slice("foo.slice/foo-bar.slice/waldo.service", -ENXIO, ((void*)0));

        check_p_g_u_slice("foo.slice/foo-bar.slice/user@1000.service", 0, SPECIAL_ROOT_SLICE);
        check_p_g_u_slice("foo.slice/foo-bar.slice/user@1000.service/", 0, SPECIAL_ROOT_SLICE);
        check_p_g_u_slice("foo.slice/foo-bar.slice/user@1000.service///", 0, SPECIAL_ROOT_SLICE);
        check_p_g_u_slice("foo.slice/foo-bar.slice/user@1000.service/waldo.service", 0, SPECIAL_ROOT_SLICE);
        check_p_g_u_slice("foo.slice/foo-bar.slice/user@1000.service/piep.slice/foo.service", 0, "piep.slice");
        check_p_g_u_slice("/foo.slice//foo-bar.slice/user@1000.service/piep.slice//piep-pap.slice//foo.service", 0, "piep-pap.slice");
}
