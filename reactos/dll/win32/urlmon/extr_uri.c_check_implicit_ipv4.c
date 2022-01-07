
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONGLONG ;
typedef int UINT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int UINT_MAX ;
 scalar_t__ is_num (int const) ;

__attribute__((used)) static BOOL check_implicit_ipv4(const WCHAR **ptr, UINT *val) {
    const WCHAR *start = *ptr;
    ULONGLONG ret = 0;
    *val = 0;

    while(is_num(**ptr)) {
        ret = ret*10 + (**ptr - '0');

        if(ret > UINT_MAX) {
            *ptr = start;
            return FALSE;
        }
        ++(*ptr);
    }

    if(*ptr == start)
        return FALSE;

    *val = ret;
    return TRUE;
}
