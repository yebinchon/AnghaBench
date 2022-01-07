
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Automount ;


 int automount_add_default_dependencies (int *) ;
 int automount_add_mount_dependencies (int *) ;
 int automount_add_trigger_dependencies (int *) ;
 int automount_set_where (int *) ;

__attribute__((used)) static int automount_add_extras(Automount *a) {
        int r;

        r = automount_set_where(a);
        if (r < 0)
                return r;

        r = automount_add_trigger_dependencies(a);
        if (r < 0)
                return r;

        r = automount_add_mount_dependencies(a);
        if (r < 0)
                return r;

        return automount_add_default_dependencies(a);
}
