
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int checked_objs; int ** pret; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ SeafDirent ;
typedef int GList ;
typedef TYPE_2__ CalcFsListData ;


 int EMPTY_SHA1 ;
 int g_hash_table_insert (int ,int ,int*) ;
 scalar_t__ g_hash_table_lookup (int ,int ) ;
 int * g_list_prepend (int *,int ) ;
 int g_strdup (int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
collect_dir_ids (int n, const char *basedir, SeafDirent *dirs[], void *vdata,
                 gboolean *recurse)
{
    SeafDirent *dir1 = dirs[0];
    SeafDirent *dir2 = dirs[1];
    CalcFsListData *data = vdata;
    GList **pret = data->pret;
    int dummy;

    if (!dir1 || strcmp (dir1->id, EMPTY_SHA1) == 0)
        return 0;

    if (g_hash_table_lookup (data->checked_objs, dir1->id))
        return 0;

    if (!dir2 || strcmp (dir1->id, dir2->id) != 0) {
        *pret = g_list_prepend (*pret, g_strdup(dir1->id));
        g_hash_table_insert (data->checked_objs, g_strdup(dir1->id), &dummy);
    }

    return 0;
}
