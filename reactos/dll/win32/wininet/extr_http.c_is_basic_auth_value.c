
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * LPWSTR ;
typedef char* LPCWSTR ;
typedef int BOOL ;


 size_t ARRAYSIZE (char const*) ;
 int TRUE ;
 int * heap_strdupW (char*) ;
 char* strchrW (char*,char) ;
 int strip_spaces (int *) ;
 int strncmpiW (char*,char const*,size_t) ;

__attribute__((used)) static inline BOOL is_basic_auth_value( LPCWSTR pszAuthValue, LPWSTR *pszRealm )
{
    static const WCHAR szBasic[] = {'B','a','s','i','c'};
    static const WCHAR szRealm[] = {'r','e','a','l','m'};
    BOOL is_basic;
    is_basic = !strncmpiW(pszAuthValue, szBasic, ARRAYSIZE(szBasic)) &&
        ((pszAuthValue[ARRAYSIZE(szBasic)] == ' ') || !pszAuthValue[ARRAYSIZE(szBasic)]);
    if (is_basic && pszRealm)
    {
        LPCWSTR token;
        LPCWSTR ptr = &pszAuthValue[ARRAYSIZE(szBasic)];
        LPCWSTR realm;
        ptr++;
        *pszRealm=((void*)0);
        token = strchrW(ptr,'=');
        if (!token)
            return TRUE;
        realm = ptr;
        while (*realm == ' ')
            realm++;
        if(!strncmpiW(realm, szRealm, ARRAYSIZE(szRealm)) &&
            (realm[ARRAYSIZE(szRealm)] == ' ' || realm[ARRAYSIZE(szRealm)] == '='))
        {
            token++;
            while (*token == ' ')
                token++;
            if (*token == '\0')
                return TRUE;
            *pszRealm = heap_strdupW(token);
            strip_spaces(*pszRealm);
        }
    }

    return is_basic;
}
