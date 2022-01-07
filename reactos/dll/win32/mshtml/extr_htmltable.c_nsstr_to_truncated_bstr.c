
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef char PRUnichar ;
typedef int HRESULT ;
typedef scalar_t__ BSTR ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 scalar_t__ SysAllocString (char const*) ;
 scalar_t__ SysAllocStringLen (char const*,int) ;
 scalar_t__ isdigitW (char const) ;
 int nsAString_GetData (int const*,char const**) ;

__attribute__((used)) static HRESULT nsstr_to_truncated_bstr(const nsAString *nsstr, BSTR *ret_ptr)
{
    const PRUnichar *str, *ptr, *end = ((void*)0);
    BSTR ret;

    nsAString_GetData(nsstr, &str);

    for(ptr = str; isdigitW(*ptr); ptr++);
    if(*ptr == '.') {
        for(end = ptr++; isdigitW(*ptr); ptr++);
        if(*ptr)
            end = ((void*)0);
    }

    ret = end ? SysAllocStringLen(str, end-str) : SysAllocString(str);

    *ret_ptr = ret;
    return ret ? S_OK : E_OUTOFMEMORY;
}
