#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static inline BOOL FUNC5( LPCWSTR pszAuthValue, LPWSTR *pszRealm )
{
    static const WCHAR szBasic[] = {'B','a','s','i','c'}; /* Note: not nul-terminated */
    static const WCHAR szRealm[] = {'r','e','a','l','m'}; /* Note: not nul-terminated */
    BOOL is_basic;
    is_basic = !FUNC4(pszAuthValue, szBasic, FUNC0(szBasic)) &&
        ((pszAuthValue[FUNC0(szBasic)] == ' ') || !pszAuthValue[FUNC0(szBasic)]);
    if (is_basic && pszRealm)
    {
        LPCWSTR token;
        LPCWSTR ptr = &pszAuthValue[FUNC0(szBasic)];
        LPCWSTR realm;
        ptr++;
        *pszRealm=NULL;
        token = FUNC2(ptr,'=');
        if (!token)
            return TRUE;
        realm = ptr;
        while (*realm == ' ')
            realm++;
        if(!FUNC4(realm, szRealm, FUNC0(szRealm)) &&
            (realm[FUNC0(szRealm)] == ' ' || realm[FUNC0(szRealm)] == '='))
        {
            token++;
            while (*token == ' ')
                token++;
            if (*token == '\0')
                return TRUE;
            *pszRealm = FUNC1(token);
            FUNC3(*pszRealm);
        }
    }

    return is_basic;
}