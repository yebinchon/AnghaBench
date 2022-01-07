
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_info {int dummy; } ;
typedef int sd_bus ;


 int BUS_MANAGER ;
 int acquire_bus (int ,int **) ;
 int arg_pager_flags ;
 int compare_machine_info ;
 int free_machines_list (struct machine_info*,int) ;
 int get_machine_list (int *,struct machine_info**,int ) ;
 int output_machines_list (struct machine_info*,int) ;
 int pager_open (int ) ;
 int strv_skip (char**,int) ;
 int typesafe_qsort (struct machine_info*,int,int ) ;

__attribute__((used)) static int list_machines(int argc, char *argv[], void *userdata) {
        struct machine_info *machine_infos = ((void*)0);
        sd_bus *bus;
        int r;

        r = acquire_bus(BUS_MANAGER, &bus);
        if (r < 0)
                return r;

        r = get_machine_list(bus, &machine_infos, strv_skip(argv, 1));
        if (r < 0)
                return r;

        (void) pager_open(arg_pager_flags);

        typesafe_qsort(machine_infos, r, compare_machine_info);
        output_machines_list(machine_infos, r);
        free_machines_list(machine_infos, r);

        return 0;
}
