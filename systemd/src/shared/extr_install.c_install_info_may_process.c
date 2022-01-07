
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int path; } ;
typedef TYPE_1__ UnitFileInstallInfo ;
typedef int UnitFileChange ;
typedef TYPE_1__ LookupPaths ;


 int EADDRNOTAVAIL ;
 int ERFKILL ;
 scalar_t__ UNIT_FILE_TYPE_MASKED ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ path_is_generator (TYPE_1__ const*,int ) ;
 scalar_t__ path_is_transient (TYPE_1__ const*,int ) ;
 int unit_file_changes_add (int **,size_t*,int,int ,int *) ;

__attribute__((used)) static int install_info_may_process(
                const UnitFileInstallInfo *i,
                const LookupPaths *paths,
                UnitFileChange **changes,
                size_t *n_changes) {
        assert(i);
        assert(paths);




        if (i->type == UNIT_FILE_TYPE_MASKED) {
                unit_file_changes_add(changes, n_changes, -ERFKILL, i->path, ((void*)0));
                return -ERFKILL;
        }
        if (path_is_generator(paths, i->path) ||
            path_is_transient(paths, i->path)) {
                unit_file_changes_add(changes, n_changes, -EADDRNOTAVAIL, i->path, ((void*)0));
                return -EADDRNOTAVAIL;
        }

        return 0;
}
