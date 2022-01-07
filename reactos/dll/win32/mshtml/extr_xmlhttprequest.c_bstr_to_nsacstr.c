
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsACString ;
typedef int HRESULT ;
typedef int BSTR ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int heap_free (char*) ;
 char* heap_strdupWtoU (int ) ;
 int nsACString_Init (int *,char*) ;

__attribute__((used)) static HRESULT bstr_to_nsacstr(BSTR bstr, nsACString *str)
{
    char *cstr = heap_strdupWtoU(bstr);
    if(!cstr)
        return E_OUTOFMEMORY;
    nsACString_Init(str, cstr);
    heap_free(cstr);
    return S_OK;
}
