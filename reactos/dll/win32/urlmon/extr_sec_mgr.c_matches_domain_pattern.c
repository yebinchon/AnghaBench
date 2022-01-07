
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int debugstr_w (char*) ;
 char* memrchrW (char*,char,scalar_t__) ;
 int strcmpiW (char*,char*) ;
 scalar_t__ strlenW (char*) ;

__attribute__((used)) static BOOL matches_domain_pattern(LPCWSTR pattern, LPCWSTR str, BOOL implicit_wildcard, LPCWSTR *matched)
{
    BOOL matches = FALSE;
    DWORD pattern_len = strlenW(pattern);
    DWORD str_len = strlenW(str);

    TRACE("(%d) Checking if %s matches %s\n", implicit_wildcard, debugstr_w(str), debugstr_w(pattern));

    *matched = ((void*)0);
    if(str_len >= pattern_len) {

        if(pattern[0] == '*' && pattern[1] == '.') {
            if(str_len >= pattern_len+1 && !strcmpiW(str+(str_len-pattern_len+1), pattern+1)) {
                const WCHAR *ptr;
                if(str_len > pattern_len+1 && (ptr = memrchrW(str, '.', str_len-pattern_len-2))) {
                    if(implicit_wildcard) {
                        matches = TRUE;
                        *matched = ptr+1;
                    }
                } else {
                    matches = TRUE;
                    *matched = str;
                }
            }
        } else if(implicit_wildcard && str_len > pattern_len) {
            if(str[str_len-pattern_len-1] == '.' && !strcmpiW(str+(str_len-pattern_len), pattern)) {
                matches = TRUE;
                *matched = str+(str_len-pattern_len);
            }
        } else {



            if(!strcmpiW(str, pattern)) {
                matches = TRUE;
                *matched = str;
            }
        }
    }

    if(matches)
        TRACE("Found a match: matched=%s\n", debugstr_w(*matched));
    else
        TRACE("No match found\n");

    return matches;
}
