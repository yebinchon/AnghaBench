
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


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
collect_file_ids (int n, const char *basedir, SeafDirent *files[], void *vdata)
{
    SeafDirent *file1 = files[0];
    SeafDirent *file2 = files[1];
    CalcFsListData *data = vdata;
    GList **pret = data->pret;
    int dummy;

    if (!file1 || strcmp (file1->id, EMPTY_SHA1) == 0)
        return 0;

    if (g_hash_table_lookup (data->checked_objs, file1->id))
        return 0;

    if (!file2 || strcmp (file1->id, file2->id) != 0) {
        *pret = g_list_prepend (*pret, g_strdup(file1->id));
        g_hash_table_insert (data->checked_objs, g_strdup(file1->id), &dummy);
    }

    return 0;
}
