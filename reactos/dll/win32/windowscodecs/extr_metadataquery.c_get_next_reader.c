
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int punkVal; int * puuid; scalar_t__ uiVal; } ;
struct TYPE_9__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef int IWICMetadataReader ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int IID_IWICMetadataReader ;
 scalar_t__ IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ IWICMetadataReader_GetValue (int *,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int PropVariantClear (TYPE_2__*) ;
 int PropVariantInit (TYPE_2__*) ;
 scalar_t__ S_OK ;
 scalar_t__ VT_CLSID ;
 scalar_t__ VT_UI2 ;
 scalar_t__ VT_UNKNOWN ;
 scalar_t__ WINCODEC_ERR_UNEXPECTEDMETADATATYPE ;

__attribute__((used)) static HRESULT get_next_reader(IWICMetadataReader *reader, UINT index,
                               GUID *guid, IWICMetadataReader **new_reader)
{
    HRESULT hr;
    PROPVARIANT schema, id, value;

    *new_reader = ((void*)0);

    PropVariantInit(&schema);
    PropVariantInit(&id);
    PropVariantInit(&value);

    if (index)
    {
        schema.vt = VT_UI2;
        schema.u.uiVal = index;
    }

    id.vt = VT_CLSID;
    id.u.puuid = guid;
    hr = IWICMetadataReader_GetValue(reader, &schema, &id, &value);
    if (hr != S_OK) return hr;

    if (value.vt == VT_UNKNOWN)
        hr = IUnknown_QueryInterface(value.u.punkVal, &IID_IWICMetadataReader, (void **)new_reader);
    else
        hr = WINCODEC_ERR_UNEXPECTEDMETADATATYPE;

    PropVariantClear(&value);
    return hr;
}
