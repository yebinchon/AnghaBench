
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int max_storages; int storages; } ;
typedef int STORAGE ;
typedef TYPE_1__ MSISTORAGESVIEW ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int msi_realloc (int ,int) ;

__attribute__((used)) static BOOL storages_set_table_size(MSISTORAGESVIEW *sv, UINT size)
{
    if (size >= sv->max_storages)
    {
        sv->max_storages *= 2;
        sv->storages = msi_realloc(sv->storages, sv->max_storages * sizeof(STORAGE *));
        if (!sv->storages)
            return FALSE;
    }

    return TRUE;
}
