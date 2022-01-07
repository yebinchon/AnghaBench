
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ num_rows; int * storages; TYPE_1__* db; } ;
struct TYPE_4__ {int storage; } ;
typedef TYPE_2__ MSISTORAGESVIEW ;
typedef int MSIRECORD ;
typedef int * LPWSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IStorage_CopyTo (int *,int ,int *,int *,int *) ;
 int IStorage_CreateStorage (int ,int *,int,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 scalar_t__ MSI_RecordGetIStream (int *,int,int **) ;
 int MSI_RecordGetString (int *,int) ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 int TRACE (char*,struct tagMSIVIEW*,int *) ;
 int create_storage (TYPE_2__*,int *,int *) ;
 int msi_free (int *) ;
 int * strdupW (int ) ;
 scalar_t__ stream_to_storage (int *,int **) ;

__attribute__((used)) static UINT STORAGES_set_row(struct tagMSIVIEW *view, UINT row, MSIRECORD *rec, UINT mask)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;
    IStorage *stg, *substg = ((void*)0);
    IStream *stm;
    LPWSTR name = ((void*)0);
    HRESULT hr;
    UINT r = ERROR_FUNCTION_FAILED;

    TRACE("(%p, %p)\n", view, rec);

    if (row > sv->num_rows)
        return ERROR_FUNCTION_FAILED;

    r = MSI_RecordGetIStream(rec, 2, &stm);
    if (r != ERROR_SUCCESS)
        return r;

    r = stream_to_storage(stm, &stg);
    if (r != ERROR_SUCCESS)
    {
        IStream_Release(stm);
        return r;
    }

    name = strdupW(MSI_RecordGetString(rec, 1));
    if (!name)
    {
        r = ERROR_OUTOFMEMORY;
        goto done;
    }

    hr = IStorage_CreateStorage(sv->db->storage, name,
                                STGM_WRITE | STGM_SHARE_EXCLUSIVE,
                                0, 0, &substg);
    if (FAILED(hr))
    {
        r = ERROR_FUNCTION_FAILED;
        goto done;
    }

    hr = IStorage_CopyTo(stg, 0, ((void*)0), ((void*)0), substg);
    if (FAILED(hr))
    {
        r = ERROR_FUNCTION_FAILED;
        goto done;
    }

    sv->storages[row] = create_storage(sv, name, stg);
    if (!sv->storages[row])
        r = ERROR_FUNCTION_FAILED;

done:
    msi_free(name);

    if (substg) IStorage_Release(substg);
    IStorage_Release(stg);
    IStream_Release(stm);

    return r;
}
