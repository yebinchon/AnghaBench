
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IWICBitmapDecoder_iface; } ;
typedef int REFIID ;
typedef int HRESULT ;
typedef TYPE_1__ BmpDecoder ;


 int BmpDecoder_Create (int,int,TYPE_1__**) ;
 scalar_t__ FAILED (int ) ;
 int IWICBitmapDecoder_QueryInterface (int *,int ,void**) ;
 int IWICBitmapDecoder_Release (int *) ;
 int TRACE (char*,int ,void**) ;
 int debugstr_guid (int ) ;

__attribute__((used)) static HRESULT BmpDecoder_Construct(int packed, int icoframe, REFIID iid, void** ppv)
{
    BmpDecoder *This;
    HRESULT ret;

    TRACE("(%s,%p)\n", debugstr_guid(iid), ppv);

    *ppv = ((void*)0);

    ret = BmpDecoder_Create(packed, icoframe, &This);
    if (FAILED(ret)) return ret;

    ret = IWICBitmapDecoder_QueryInterface(&This->IWICBitmapDecoder_iface, iid, ppv);
    IWICBitmapDecoder_Release(&This->IWICBitmapDecoder_iface);

    return ret;
}
