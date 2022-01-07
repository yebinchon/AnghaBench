
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_18__ {char member_0; char member_1; char member_2; char member_3; char member_4; char member_5; char member_6; char member_7; char member_8; char member_9; char member_10; int member_11; } ;
typedef TYPE_2__ WCHAR ;
typedef int ULONG ;
struct TYPE_17__ {int ulVal; TYPE_3__* pwszVal; } ;
struct TYPE_16__ {TYPE_1__ u; int vt; } ;
struct TYPE_19__ {TYPE_12__ value; TYPE_12__ id; TYPE_12__ schema; } ;
typedef TYPE_3__ MetadataItem ;
typedef TYPE_3__* LPWSTR ;
typedef int IStream ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef TYPE_3__ BYTE ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int PropVariantInit (TYPE_12__*) ;
 int S_OK ;
 int VT_LPWSTR ;
 int VT_UI4 ;
 int lstrcpyW (TYPE_3__*,TYPE_2__ const*) ;
 int lstrlenW (TYPE_2__ const*) ;
 int read_png_chunk (int *,TYPE_3__*,TYPE_3__**,int*) ;
 int read_ulong_be (TYPE_3__*) ;

__attribute__((used)) static HRESULT LoadChrmMetadata(IStream *stream, const GUID *preferred_vendor,
    DWORD persist_options, MetadataItem **items, DWORD *item_count)
{
    HRESULT hr;
    BYTE type[4];
    BYTE *data;
    ULONG data_size;
    static const WCHAR names[8][12] = {
        {'W','h','i','t','e','P','o','i','n','t','X',0},
        {'W','h','i','t','e','P','o','i','n','t','Y',0},
        {'R','e','d','X',0},
        {'R','e','d','Y',0},
        {'G','r','e','e','n','X',0},
        {'G','r','e','e','n','Y',0},
        {'B','l','u','e','X',0},
        {'B','l','u','e','Y',0},
    };
    LPWSTR dyn_names[8] = {0};
    MetadataItem *result;
    int i;

    hr = read_png_chunk(stream, type, &data, &data_size);
    if (FAILED(hr)) return hr;

    if (data_size < 32)
    {
        HeapFree(GetProcessHeap(), 0, data);
        return E_FAIL;
    }

    result = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(MetadataItem)*8);
    for (i=0; i<8; i++)
    {
        dyn_names[i] = HeapAlloc(GetProcessHeap(), 0, sizeof(WCHAR)*(lstrlenW(names[i])+1));
        if (!dyn_names[i]) break;
    }
    if (!result || i < 8)
    {
        HeapFree(GetProcessHeap(), 0, result);
        for (i=0; i<8; i++)
            HeapFree(GetProcessHeap(), 0, dyn_names[i]);
        HeapFree(GetProcessHeap(), 0, data);
        return E_OUTOFMEMORY;
    }

    for (i=0; i<8; i++)
    {
        PropVariantInit(&result[i].schema);

        PropVariantInit(&result[i].id);
        result[i].id.vt = VT_LPWSTR;
        result[i].id.u.pwszVal = dyn_names[i];
        lstrcpyW(dyn_names[i], names[i]);

        PropVariantInit(&result[i].value);
        result[i].value.vt = VT_UI4;
        result[i].value.u.ulVal = read_ulong_be(&data[i*4]);
    }

    *items = result;
    *item_count = 8;

    HeapFree(GetProcessHeap(), 0, data);

    return S_OK;
}
