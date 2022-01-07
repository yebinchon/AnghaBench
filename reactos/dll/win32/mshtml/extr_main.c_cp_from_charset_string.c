
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int uiInternetEncoding; } ;
typedef TYPE_1__ MIMECSETINFO ;
typedef int IMultiLanguage2 ;
typedef int HRESULT ;
typedef int BSTR ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_CMultiLanguage ;
 int CP_UTF8 ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int IID_IMultiLanguage2 ;
 int IMultiLanguage2_GetCharsetInfo (int ,int ,TYPE_1__*) ;
 int IMultiLanguage2_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int mlang ;

UINT cp_from_charset_string(BSTR charset)
{
    MIMECSETINFO info;
    HRESULT hres;

    if(!mlang) {
        IMultiLanguage2 *new_mlang;

        hres = CoCreateInstance(&CLSID_CMultiLanguage, ((void*)0), CLSCTX_INPROC_SERVER,
                &IID_IMultiLanguage2, (void**)&new_mlang);
        if(FAILED(hres)) {
            ERR("Could not create CMultiLanguage instance\n");
            return CP_UTF8;
        }

        if(InterlockedCompareExchangePointer((void**)&mlang, new_mlang, ((void*)0)))
            IMultiLanguage2_Release(new_mlang);
    }

    hres = IMultiLanguage2_GetCharsetInfo(mlang, charset, &info);
    if(FAILED(hres)) {
        FIXME("GetCharsetInfo failed: %08x\n", hres);
        return CP_UTF8;
    }

    return info.uiInternetEncoding;
}
