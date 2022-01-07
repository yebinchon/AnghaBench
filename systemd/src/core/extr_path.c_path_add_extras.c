
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Path ;


 int path_add_default_dependencies (int *) ;
 int path_add_mount_dependencies (int *) ;
 int path_add_trigger_dependencies (int *) ;

__attribute__((used)) static int path_add_extras(Path *p) {
        int r;

        r = path_add_trigger_dependencies(p);
        if (r < 0)
                return r;

        r = path_add_mount_dependencies(p);
        if (r < 0)
                return r;

        return path_add_default_dependencies(p);
}
