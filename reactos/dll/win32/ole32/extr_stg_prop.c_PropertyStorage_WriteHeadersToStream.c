
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hdr ;
typedef int fmtOffset ;
typedef int ULONG ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
struct TYPE_9__ {int stm; } ;
typedef TYPE_2__ PropertyStorage_impl ;
typedef int PROPERTYSETHEADER ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int HRESULT ;
typedef int FORMATIDOFFSET ;


 scalar_t__ FAILED (int ) ;
 int IStream_Seek (int ,TYPE_3__,int ,int *) ;
 int IStream_Write (int ,int *,int,int*) ;
 int PropertyStorage_MakeFmtIdOffset (TYPE_2__*,int *) ;
 int PropertyStorage_MakeHeader (TYPE_2__*,int *) ;
 int STG_E_WRITEFAULT ;
 int STREAM_SEEK_SET ;
 int S_OK ;

__attribute__((used)) static HRESULT PropertyStorage_WriteHeadersToStream(PropertyStorage_impl *This)
{
    HRESULT hr;
    ULONG count = 0;
    LARGE_INTEGER seek = { {0} };
    PROPERTYSETHEADER hdr;
    FORMATIDOFFSET fmtOffset;

    hr = IStream_Seek(This->stm, seek, STREAM_SEEK_SET, ((void*)0));
    if (FAILED(hr))
        goto end;
    PropertyStorage_MakeHeader(This, &hdr);
    hr = IStream_Write(This->stm, &hdr, sizeof(hdr), &count);
    if (FAILED(hr))
        goto end;
    if (count != sizeof(hdr))
    {
        hr = STG_E_WRITEFAULT;
        goto end;
    }

    PropertyStorage_MakeFmtIdOffset(This, &fmtOffset);
    hr = IStream_Write(This->stm, &fmtOffset, sizeof(fmtOffset), &count);
    if (FAILED(hr))
        goto end;
    if (count != sizeof(fmtOffset))
    {
        hr = STG_E_WRITEFAULT;
        goto end;
    }
    hr = S_OK;

end:
    return hr;
}
