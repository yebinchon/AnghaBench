
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ gint64 ;
struct TYPE_7__ {int delta; int active_paths; } ;
struct TYPE_6__ {scalar_t__ size; int name; } ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ CalcQuotaDeltaData ;


 scalar_t__ S_IFREG ;
 int dirent_same (TYPE_1__*,TYPE_1__*) ;
 int g_hash_table_replace (int ,char*,void*) ;
 char* g_strconcat (char const*,int ,int *) ;

__attribute__((used)) static int
check_quota_and_active_paths_diff_files (int n, const char *basedir,
                                         SeafDirent *files[], void *vdata)
{
    CalcQuotaDeltaData *data = vdata;
    SeafDirent *file1 = files[0];
    SeafDirent *file2 = files[1];
    gint64 size1, size2;
    char *path;

    if (file1 && file2) {
        size1 = file1->size;
        size2 = file2->size;
        data->delta += (size1 - size2);

        if (!dirent_same (file1, file2)) {
            path = g_strconcat(basedir, file1->name, ((void*)0));
            g_hash_table_replace (data->active_paths, path, (void*)(long)S_IFREG);
        }
    } else if (file1 && !file2) {
        data->delta += file1->size;

        path = g_strconcat (basedir, file1->name, ((void*)0));
        g_hash_table_replace (data->active_paths, path, (void*)(long)S_IFREG);
    } else if (!file1 && file2) {
        data->delta -= file2->size;
    }

    return 0;
}
