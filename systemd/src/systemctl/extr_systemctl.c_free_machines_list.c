
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_info {int dummy; } ;


 int free (struct machine_info*) ;
 int machine_info_clear (struct machine_info*) ;

__attribute__((used)) static void free_machines_list(struct machine_info *machine_infos, int n) {
        int i;

        if (!machine_infos)
                return;

        for (i = 0; i < n; i++)
                machine_info_clear(&machine_infos[i]);

        free(machine_infos);
}
