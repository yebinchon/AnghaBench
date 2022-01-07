
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_info {int control_group; int state; int name; } ;


 int assert (struct machine_info*) ;
 int free (int ) ;
 int zero (struct machine_info) ;

__attribute__((used)) static void machine_info_clear(struct machine_info *info) {
        assert(info);

        free(info->name);
        free(info->state);
        free(info->control_group);
        zero(*info);
}
