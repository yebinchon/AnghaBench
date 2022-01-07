
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__* LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__* BSTR ;


 scalar_t__* SysAllocStringLen (int *,int) ;
 scalar_t__ iscntrlW (scalar_t__ const) ;
 scalar_t__ isspaceW (scalar_t__ const) ;
 int strlenW (scalar_t__ const*) ;

__attribute__((used)) static BSTR pre_process_uri(LPCWSTR uri) {
    const WCHAR *start, *end, *ptr;
    WCHAR *ptr2;
    DWORD len;
    BSTR ret;

    start = uri;

    while(*start && (iscntrlW(*start) || isspaceW(*start))) ++start;


    if(!*start)
        return SysAllocStringLen(((void*)0), 0);

    end = start + strlenW(start);
    while(--end > start && (iscntrlW(*end) || isspaceW(*end)));

    len = ++end - start;
    for(ptr = start; ptr < end; ptr++) {
        if(iscntrlW(*ptr))
            len--;
    }

    ret = SysAllocStringLen(((void*)0), len);
    if(!ret)
        return ((void*)0);

    for(ptr = start, ptr2=ret; ptr < end; ptr++) {
        if(!iscntrlW(*ptr))
            *ptr2++ = *ptr;
    }

    return ret;
}
