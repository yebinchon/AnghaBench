
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int check_p_d_u (char*,int ,char*) ;

__attribute__((used)) static void test_path_decode_unit(void) {
        check_p_d_u("getty@tty2.service", 0, "getty@tty2.service");
        check_p_d_u("getty@tty2.service/", 0, "getty@tty2.service");
        check_p_d_u("getty@tty2.service/xxx", 0, "getty@tty2.service");
        check_p_d_u("getty@.service/", -ENXIO, ((void*)0));
        check_p_d_u("getty@.service", -ENXIO, ((void*)0));
        check_p_d_u("getty.service", 0, "getty.service");
        check_p_d_u("getty", -ENXIO, ((void*)0));
        check_p_d_u("getty/waldo", -ENXIO, ((void*)0));
        check_p_d_u("_cpu.service", 0, "cpu.service");
}
