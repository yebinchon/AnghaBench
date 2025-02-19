
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* entries; } ;
struct TYPE_6__ {char* id; int mode; } ;
typedef int SeafFSManager ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ SeafDir ;
typedef TYPE_3__ GList ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int seaf_dir_free (TYPE_2__*) ;
 TYPE_2__* seaf_fs_manager_get_seafdir (int *,char const*,int,char const*) ;

__attribute__((used)) static int
count_dir_files (SeafFSManager *mgr, const char *repo_id, int version, const char *id)
{
    SeafDir *dir;
    SeafDirent *seaf_dent;
    int count = 0;
    int result;
    GList *p;

    dir = seaf_fs_manager_get_seafdir (mgr, repo_id, version, id);
    if (!dir)
        return -1;

    for (p = dir->entries; p; p = p->next) {
        seaf_dent = (SeafDirent *)p->data;

        if (S_ISREG(seaf_dent->mode)) {
            count ++;
        } else if (S_ISDIR(seaf_dent->mode)) {
            result = count_dir_files (mgr, repo_id, version, seaf_dent->id);
            if (result < 0) {
                seaf_dir_free (dir);
                return result;
            }
            count += result;
        }
    }

    seaf_dir_free (dir);
    return count;
}
