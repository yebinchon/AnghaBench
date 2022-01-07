
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_14__ {int max_storages; TYPE_2__** storages; TYPE_1__* db; } ;
struct TYPE_13__ {scalar_t__ type; int pwcsName; } ;
struct TYPE_12__ {int storage; } ;
struct TYPE_11__ {int storage; } ;
typedef TYPE_2__ STORAGE ;
typedef TYPE_3__ STATSTG ;
typedef TYPE_4__ MSISTORAGESVIEW ;
typedef int INT ;
typedef int IEnumSTATSTG ;
typedef int HRESULT ;


 int CoTaskMemFree (int ) ;
 scalar_t__ FAILED (int ) ;
 int IEnumSTATSTG_Next (int *,int,TYPE_3__*,int*) ;
 int IEnumSTATSTG_Release (int *) ;
 int IStorage_EnumElements (int ,int ,int *,int ,int **) ;
 int IStorage_OpenStorage (int ,int ,int *,int,int *,int ,int *) ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STGTY_STORAGE ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 TYPE_2__* create_storage (TYPE_4__*,int ,int *) ;
 int debugstr_w (int ) ;
 TYPE_2__** msi_alloc (int) ;
 int storages_set_table_size (TYPE_4__*,int) ;

__attribute__((used)) static INT add_storages_to_table(MSISTORAGESVIEW *sv)
{
    STORAGE *storage = ((void*)0);
    IEnumSTATSTG *stgenum = ((void*)0);
    STATSTG stat;
    HRESULT hr;
    UINT count = 0, size;

    hr = IStorage_EnumElements(sv->db->storage, 0, ((void*)0), 0, &stgenum);
    if (FAILED(hr))
        return -1;

    sv->max_storages = 1;
    sv->storages = msi_alloc(sizeof(STORAGE *));
    if (!sv->storages)
        return -1;

    while (TRUE)
    {
        size = 0;
        hr = IEnumSTATSTG_Next(stgenum, 1, &stat, &size);
        if (FAILED(hr) || !size)
            break;

        if (stat.type != STGTY_STORAGE)
        {
            CoTaskMemFree(stat.pwcsName);
            continue;
        }

        TRACE("enumerated storage %s\n", debugstr_w(stat.pwcsName));

        storage = create_storage(sv, stat.pwcsName, ((void*)0));
        if (!storage)
        {
            count = -1;
            CoTaskMemFree(stat.pwcsName);
            break;
        }

        IStorage_OpenStorage(sv->db->storage, stat.pwcsName, ((void*)0),
                             STGM_READ | STGM_SHARE_EXCLUSIVE, ((void*)0), 0,
                             &storage->storage);
        CoTaskMemFree(stat.pwcsName);

        if (!storages_set_table_size(sv, ++count))
        {
            count = -1;
            break;
        }

        sv->storages[count - 1] = storage;
    }

    IEnumSTATSTG_Release(stgenum);
    return count;
}
