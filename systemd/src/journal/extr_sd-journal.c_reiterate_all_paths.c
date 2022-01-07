
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ toplevel_fd; int * path; scalar_t__ no_new_files; } ;
typedef TYPE_1__ sd_journal ;


 int SD_JOURNAL_OS_ROOT ;
 int add_current_paths (TYPE_1__*) ;
 int add_root_directory (TYPE_1__*,int *,int) ;
 int add_search_paths (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static int reiterate_all_paths(sd_journal *j) {
        assert(j);

        if (j->no_new_files)
                return add_current_paths(j);

        if (j->flags & SD_JOURNAL_OS_ROOT)
                return add_search_paths(j);

        if (j->toplevel_fd >= 0)
                return add_root_directory(j, ((void*)0), 0);

        if (j->path)
                return add_root_directory(j, j->path, 1);

        return add_search_paths(j);
}
