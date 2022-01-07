
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int is_hexdigit (char const) ;

__attribute__((used)) static BOOL check_pct_encoded(const WCHAR **ptr) {
    const WCHAR *start = *ptr;

    if(**ptr != '%')
        return FALSE;

    ++(*ptr);
    if(!is_hexdigit(**ptr)) {
        *ptr = start;
        return FALSE;
    }

    ++(*ptr);
    if(!is_hexdigit(**ptr)) {
        *ptr = start;
        return FALSE;
    }

    ++(*ptr);
    return TRUE;
}
