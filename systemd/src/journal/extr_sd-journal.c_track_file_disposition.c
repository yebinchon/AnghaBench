
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int has_runtime_files; int has_persistent_files; int path; } ;
typedef TYPE_1__ sd_journal ;
typedef TYPE_1__ JournalFile ;


 int assert (TYPE_1__*) ;
 scalar_t__ path_has_prefix (TYPE_1__*,int ,char*) ;

__attribute__((used)) static void track_file_disposition(sd_journal *j, JournalFile *f) {
        assert(j);
        assert(f);

        if (!j->has_runtime_files && path_has_prefix(j, f->path, "/run"))
                j->has_runtime_files = 1;
        else if (!j->has_persistent_files && path_has_prefix(j, f->path, "/var"))
                j->has_persistent_files = 1;
}
