
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsAString ;
typedef scalar_t__ PRUnichar ;
typedef int HRESULT ;
typedef int * BSTR ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int * SysAllocString (scalar_t__ const*) ;
 int TRACE (char*,int ) ;
 int debugstr_w (scalar_t__ const*) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,scalar_t__ const**) ;

HRESULT return_nsstr(nsresult nsres, nsAString *nsstr, BSTR *p)
{
    const PRUnichar *str;

    if(NS_FAILED(nsres)) {
        ERR("failed: %08x\n", nsres);
        nsAString_Finish(nsstr);
        return E_FAIL;
    }

    nsAString_GetData(nsstr, &str);
    TRACE("ret %s\n", debugstr_w(str));
    if(*str) {
        *p = SysAllocString(str);
        if(!*p)
            return E_OUTOFMEMORY;
    }else {
        *p = ((void*)0);
    }

    nsAString_Finish(nsstr);
    return S_OK;
}
