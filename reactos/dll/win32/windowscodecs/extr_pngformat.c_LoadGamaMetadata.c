
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char WCHAR ;
typedef int ULONG ;
struct TYPE_13__ {int ulVal; TYPE_2__* pwszVal; } ;
struct TYPE_15__ {TYPE_1__ u; int vt; } ;
struct TYPE_14__ {TYPE_9__ value; TYPE_9__ id; TYPE_9__ schema; } ;
typedef TYPE_2__ MetadataItem ;
typedef TYPE_2__* LPWSTR ;
typedef int ImageGamma ;
typedef int IStream ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef TYPE_2__ BYTE ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int PropVariantInit (TYPE_9__*) ;
 int S_OK ;
 int VT_LPWSTR ;
 int VT_UI4 ;
 int memcpy (TYPE_2__*,char const*,int) ;
 int read_png_chunk (int *,TYPE_2__*,TYPE_2__**,int*) ;
 int read_ulong_be (TYPE_2__*) ;

__attribute__((used)) static HRESULT LoadGamaMetadata(IStream *stream, const GUID *preferred_vendor,
    DWORD persist_options, MetadataItem **items, DWORD *item_count)
{
    HRESULT hr;
    BYTE type[4];
    BYTE *data;
    ULONG data_size;
    ULONG gamma;
    static const WCHAR ImageGamma[] = {'I','m','a','g','e','G','a','m','m','a',0};
    LPWSTR name;
    MetadataItem *result;

    hr = read_png_chunk(stream, type, &data, &data_size);
    if (FAILED(hr)) return hr;

    if (data_size < 4)
    {
        HeapFree(GetProcessHeap(), 0, data);
        return E_FAIL;
    }

    gamma = read_ulong_be(data);

    HeapFree(GetProcessHeap(), 0, data);

    result = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(MetadataItem));
    name = HeapAlloc(GetProcessHeap(), 0, sizeof(ImageGamma));
    if (!result || !name)
    {
        HeapFree(GetProcessHeap(), 0, result);
        HeapFree(GetProcessHeap(), 0, name);
        return E_OUTOFMEMORY;
    }

    PropVariantInit(&result[0].schema);
    PropVariantInit(&result[0].id);
    PropVariantInit(&result[0].value);

    memcpy(name, ImageGamma, sizeof(ImageGamma));

    result[0].id.vt = VT_LPWSTR;
    result[0].id.u.pwszVal = name;
    result[0].value.vt = VT_UI4;
    result[0].value.u.ulVal = gamma;

    *items = result;
    *item_count = 1;

    return S_OK;
}
