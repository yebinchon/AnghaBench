
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sectionHdr ;
typedef int dwTemp ;
typedef int ULONG ;
struct TYPE_16__ {void* QuadPart; } ;
struct TYPE_13__ {scalar_t__ lVal; int iVal; } ;
struct TYPE_15__ {TYPE_1__ u; void* vt; } ;
struct TYPE_14__ {scalar_t__ locale; int grfFlags; int stm; int codePage; int name_to_propid; int propid_to_prop; } ;
typedef TYPE_2__ PropertyStorage_impl ;
typedef TYPE_3__ PROPVARIANT ;
typedef int PROPERTYSECTIONHEADER ;
typedef int PROPERTYIDOFFSET ;
typedef int LPBYTE ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int IStream_Seek (int ,TYPE_4__,int ,int *) ;
 int IStream_Write (int ,int*,int,int *) ;
 scalar_t__ LOCALE_SYSTEM_DEFAULT ;
 int PID_BEHAVIOR ;
 int PID_CODEPAGE ;
 int PID_LOCALE ;
 int PROPSETFLAG_CASE_SENSITIVE ;
 int PropVariantInit (TYPE_3__*) ;
 int PropertyStorage_MakeSectionHdr (int ,int,int*) ;
 int PropertyStorage_WriteDictionaryToStream (TYPE_2__*,int*) ;
 int PropertyStorage_WriteHeadersToStream (TYPE_2__*) ;
 int PropertyStorage_WritePropertiesToStream (TYPE_2__*,int,int*) ;
 int PropertyStorage_WritePropertyToStream (TYPE_2__*,int ,int ,TYPE_3__*,int*) ;
 void* SECTIONHEADER_OFFSET ;
 int STREAM_SEEK_SET ;
 int StorageUtl_WriteDWord (int ,int ,int) ;
 void* VT_I2 ;
 void* VT_I4 ;
 scalar_t__ dictionary_num_entries (int ) ;

__attribute__((used)) static HRESULT PropertyStorage_WriteToStream(PropertyStorage_impl *This)
{
    PROPERTYSECTIONHEADER sectionHdr;
    HRESULT hr;
    ULONG count;
    LARGE_INTEGER seek;
    DWORD numProps, prop, sectionOffset, dwTemp;
    PROPVARIANT var;

    PropertyStorage_WriteHeadersToStream(This);


    numProps = 1;
    if (dictionary_num_entries(This->name_to_propid))
        numProps++;
    if (This->locale != LOCALE_SYSTEM_DEFAULT)
        numProps++;
    if (This->grfFlags & PROPSETFLAG_CASE_SENSITIVE)
        numProps++;
    numProps += dictionary_num_entries(This->propid_to_prop);




    PropertyStorage_MakeSectionHdr(0, numProps, &sectionHdr);
    seek.QuadPart = SECTIONHEADER_OFFSET;
    hr = IStream_Seek(This->stm, seek, STREAM_SEEK_SET, ((void*)0));
    if (FAILED(hr))
        goto end;
    hr = IStream_Write(This->stm, &sectionHdr, sizeof(sectionHdr), &count);
    if (FAILED(hr))
        goto end;

    prop = 0;
    sectionOffset = sizeof(PROPERTYSECTIONHEADER) +
     numProps * sizeof(PROPERTYIDOFFSET);

    if (dictionary_num_entries(This->name_to_propid))
    {
        prop++;
        hr = PropertyStorage_WriteDictionaryToStream(This, &sectionOffset);
        if (FAILED(hr))
            goto end;
    }

    PropVariantInit(&var);

    var.vt = VT_I2;
    var.u.iVal = This->codePage;
    hr = PropertyStorage_WritePropertyToStream(This, prop++, PID_CODEPAGE,
     &var, &sectionOffset);
    if (FAILED(hr))
        goto end;

    if (This->locale != LOCALE_SYSTEM_DEFAULT)
    {
        var.vt = VT_I4;
        var.u.lVal = This->locale;
        hr = PropertyStorage_WritePropertyToStream(This, prop++, PID_LOCALE,
         &var, &sectionOffset);
        if (FAILED(hr))
            goto end;
    }

    if (This->grfFlags & PROPSETFLAG_CASE_SENSITIVE)
    {
        var.vt = VT_I4;
        var.u.lVal = 1;
        hr = PropertyStorage_WritePropertyToStream(This, prop++, PID_BEHAVIOR,
         &var, &sectionOffset);
        if (FAILED(hr))
            goto end;
    }

    hr = PropertyStorage_WritePropertiesToStream(This, prop, &sectionOffset);
    if (FAILED(hr))
        goto end;


    seek.QuadPart = SECTIONHEADER_OFFSET;
    hr = IStream_Seek(This->stm, seek, STREAM_SEEK_SET, ((void*)0));
    if (FAILED(hr))
        goto end;
    StorageUtl_WriteDWord((LPBYTE)&dwTemp, 0, sectionOffset);
    hr = IStream_Write(This->stm, &dwTemp, sizeof(dwTemp), &count);

end:
    return hr;
}
