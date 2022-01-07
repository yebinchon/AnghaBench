
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsACString ;
typedef int HRESULT ;
typedef int * BSTR ;


 int CP_UTF8 ;
 int ERR (char*,int ) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int * SysAllocStringLen (int *,int) ;
 int nsACString_Finish (int *) ;
 int nsACString_GetData (int *,char const**) ;

__attribute__((used)) static HRESULT return_nscstr(nsresult nsres, nsACString *nscstr, BSTR *p)
{
    const char *str;
    int len;

    if(NS_FAILED(nsres)) {
        ERR("failed: %08x\n", nsres);
        nsACString_Finish(nscstr);
        return E_FAIL;
    }

    nsACString_GetData(nscstr, &str);

    if(*str) {
        len = MultiByteToWideChar(CP_UTF8, 0, str, -1, ((void*)0), 0);
        *p = SysAllocStringLen(((void*)0), len);
        if(!*p) {
            nsACString_Finish(nscstr);
            return E_OUTOFMEMORY;
        }
        MultiByteToWideChar(CP_UTF8, 0, str, -1, *p, len);
    }else {
        *p = ((void*)0);
    }

    nsACString_Finish(nscstr);
    return S_OK;
}
