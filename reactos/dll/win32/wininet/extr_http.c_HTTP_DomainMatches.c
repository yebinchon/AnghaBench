
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char const* str; } ;
typedef TYPE_1__ substr_t ;
typedef int localW ;
typedef char WCHAR ;
typedef char const* LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 char* strchrW (char const*,char) ;
 int strlenW (char const*) ;
 int strncmpiW (char const*,char const*,int) ;

__attribute__((used)) static BOOL HTTP_DomainMatches(LPCWSTR server, substr_t domain)
{
    static const WCHAR localW[] = { '<','l','o','c','a','l','>',0 };
    const WCHAR *dot, *ptr;
    int len;

    if(domain.len == sizeof(localW)/sizeof(WCHAR)-1 && !strncmpiW(domain.str, localW, domain.len) && !strchrW(server, '.' ))
        return TRUE;

    if(domain.len && *domain.str != '*')
        return domain.len == strlenW(server) && !strncmpiW(server, domain.str, domain.len);

    if(domain.len < 2 || domain.str[1] != '.')
        return FALSE;





    dot = strchrW(server, '.');
    if(!dot)
        return FALSE;

    len = strlenW(dot + 1);
    if(len < domain.len - 2)
        return FALSE;





    ptr = dot + 1 + len - domain.len + 2;
    if(!strncmpiW(ptr, domain.str+2, domain.len-2))





        return *(ptr - 1) == '.';

    return len == domain.len-2 && !strncmpiW(dot + 1, domain.str + 2, len);
}
