#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szPropertyName ;
typedef  char WCHAR ;
struct TYPE_11__ {char* szAppName; char const* szClassName; struct TYPE_11__* next; struct TYPE_11__* overrides; } ;
struct TYPE_10__ {TYPE_2__* classes; } ;
typedef  int /*<<< orphan*/  PUXINI_FILE ;
typedef  int /*<<< orphan*/  PTHEME_PARTSTATE ;
typedef  TYPE_1__* PTHEME_FILE ;
typedef  TYPE_2__* PTHEME_CLASS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CSTR_EQUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int MAX_THEME_APP_NAME ; 
 int MAX_THEME_CLASS_NAME ; 
 int MAX_THEME_VALUE_NAME ; 
 TYPE_2__* FUNC2 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (char*,int*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*,char*,int*,int*) ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 

void FUNC18(PTHEME_FILE tf)
{
    static const WCHAR szSysMetrics[] = {'S','y','s','M','e','t','r','i','c','s','\0'};
    static const WCHAR szGlobals[] = {'g','l','o','b','a','l','s','\0'};
    PTHEME_CLASS cls;
    PTHEME_CLASS globals;
    PTHEME_PARTSTATE ps;
    PUXINI_FILE ini;
    WCHAR szAppName[MAX_THEME_APP_NAME];
    WCHAR szClassName[MAX_THEME_CLASS_NAME];
    WCHAR szPropertyName[MAX_THEME_VALUE_NAME];
    int iPartId;
    int iStateId;
    int iPropertyPrimitive;
    int iPropertyId;
    DWORD dwLen;
    LPCWSTR lpName;
    DWORD dwValueLen;
    LPCWSTR lpValue;

    if(tf->classes)
        return;

    ini = FUNC7(tf);

    while((lpName=FUNC12(ini, &dwLen))) 
    {
        if(FUNC0(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE, lpName, dwLen, szSysMetrics, -1) == CSTR_EQUAL) 
        {
            while((lpName=FUNC13(ini, &dwLen, &lpValue, &dwValueLen))) 
            {
                FUNC16(szPropertyName, lpName, FUNC17(dwLen+1, sizeof(szPropertyName)/sizeof(szPropertyName[0])));
                if(FUNC8(szPropertyName, &iPropertyPrimitive, &iPropertyId)) 
                {
                   /* Catch all metrics, including colors */
                   FUNC3(tf, iPropertyPrimitive, iPropertyId, lpValue, dwValueLen);
                }
                else 
                {
                    FUNC10("Unknown system metric %s\n", FUNC14(szPropertyName));
                }
            }
            continue;
        }

        if(FUNC9(lpName, dwLen, szAppName, szClassName, &iPartId, &iStateId)) 
        {
            BOOL isGlobal = FALSE;
            if(!FUNC15(szClassName, szGlobals)) 
            {
                isGlobal = TRUE;
            }
            cls = FUNC2(tf, szAppName, szClassName);
            ps = FUNC4(cls, iPartId, iStateId);

            while((lpName=FUNC13(ini, &dwLen, &lpValue, &dwValueLen))) 
            {
                FUNC16(szPropertyName, lpName, FUNC17(dwLen+1, sizeof(szPropertyName)/sizeof(szPropertyName[0])));
                if(FUNC8(szPropertyName, &iPropertyPrimitive, &iPropertyId)) 
                {
                    FUNC5(ps, iPropertyPrimitive, iPropertyId, lpValue, dwValueLen, isGlobal);
                }
                else 
                {
                    FUNC10("Unknown property %s\n", FUNC14(szPropertyName));
                }
            }
        }
    }

    /* App/Class combos override values defined by the base class, map these overrides */
    globals = FUNC6(tf, NULL, szGlobals);
    cls = tf->classes;
    while(cls) 
    {
        if(*cls->szAppName) 
        {
            cls->overrides = FUNC6(tf, NULL, cls->szClassName);
            if(!cls->overrides) 
            {
                FUNC10("No overrides found for app %s class %s\n", FUNC14(cls->szAppName), FUNC14(cls->szClassName));
            }
            else 
            {
                cls->overrides = globals;
            }
        }
        else 
        {
            /* Everything overrides globals..except globals */
            if(cls != globals) 
                cls->overrides = globals;
        }
        cls = cls->next;
    }
    FUNC11(ini);

    if(!tf->classes) {
        FUNC1("Failed to parse theme ini\n");
    }
}