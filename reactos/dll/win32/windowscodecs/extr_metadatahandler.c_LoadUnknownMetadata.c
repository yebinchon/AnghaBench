
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_10__ {int * pBlobData; scalar_t__ cbSize; } ;
struct TYPE_11__ {TYPE_2__ blob; } ;
struct TYPE_14__ {TYPE_3__ u; int vt; } ;
struct TYPE_13__ {TYPE_6__ value; TYPE_6__ id; TYPE_6__ schema; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_12__ {TYPE_1__ cbSize; } ;
typedef TYPE_4__ STATSTG ;
typedef TYPE_5__ MetadataItem ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ E_FAIL ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ IStream_Read (int *,int *,int,scalar_t__*) ;
 scalar_t__ IStream_Stat (int *,TYPE_4__*,int ) ;
 int PropVariantInit (TYPE_6__*) ;
 int STATFLAG_NONAME ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 int VT_BLOB ;

__attribute__((used)) static HRESULT LoadUnknownMetadata(IStream *input, const GUID *preferred_vendor,
    DWORD persist_options, MetadataItem **items, DWORD *item_count)
{
    HRESULT hr;
    MetadataItem *result;
    STATSTG stat;
    BYTE *data;
    ULONG bytesread;

    TRACE("\n");

    hr = IStream_Stat(input, &stat, STATFLAG_NONAME);
    if (FAILED(hr))
        return hr;

    data = HeapAlloc(GetProcessHeap(), 0, stat.cbSize.QuadPart);
    if (!data) return E_OUTOFMEMORY;

    hr = IStream_Read(input, data, stat.cbSize.QuadPart, &bytesread);
    if (bytesread != stat.cbSize.QuadPart) hr = E_FAIL;
    if (hr != S_OK)
    {
        HeapFree(GetProcessHeap(), 0, data);
        return hr;
    }

    result = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(MetadataItem));
    if (!result)
    {
        HeapFree(GetProcessHeap(), 0, data);
        return E_OUTOFMEMORY;
    }

    PropVariantInit(&result[0].schema);
    PropVariantInit(&result[0].id);
    PropVariantInit(&result[0].value);

    result[0].value.vt = VT_BLOB;
    result[0].value.u.blob.cbSize = bytesread;
    result[0].value.u.blob.pBlobData = data;

    *items = result;
    *item_count = 1;

    return S_OK;
}
