
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int active_paths; } ;
struct TYPE_4__ {int name; int id; } ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ CalcQuotaDeltaData ;


 int EMPTY_SHA1 ;
 scalar_t__ S_IFDIR ;
 int g_hash_table_replace (int ,char*,void*) ;
 char* g_strconcat (char const*,int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
check_quota_and_active_paths_diff_dirs (int n, const char *basedir,
                                        SeafDirent *dirs[], void *vdata,
                                        gboolean *recurse)
{
    CalcQuotaDeltaData *data = vdata;
    SeafDirent *dir1 = dirs[0];
    SeafDirent *dir2 = dirs[1];
    char *path;


    if ((!dir2 && dir1 && strcmp(dir1->id, EMPTY_SHA1) == 0) ||
 (dir2 && dir1 && strcmp(dir1->id, EMPTY_SHA1) == 0 && strcmp(dir2->id, EMPTY_SHA1) != 0)) {
        path = g_strconcat (basedir, dir1->name, ((void*)0));
        g_hash_table_replace (data->active_paths, path, (void*)(long)S_IFDIR);
    }

    return 0;
}
