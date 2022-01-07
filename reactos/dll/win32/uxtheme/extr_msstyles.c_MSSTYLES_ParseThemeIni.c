
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int szPropertyName ;
typedef char WCHAR ;
struct TYPE_11__ {char* szAppName; char const* szClassName; struct TYPE_11__* next; struct TYPE_11__* overrides; } ;
struct TYPE_10__ {TYPE_2__* classes; } ;
typedef int PUXINI_FILE ;
typedef int PTHEME_PARTSTATE ;
typedef TYPE_1__* PTHEME_FILE ;
typedef TYPE_2__* PTHEME_CLASS ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringW (int ,int ,int ,scalar_t__,char const*,int) ;
 int ERR (char*) ;
 int FALSE ;
 int LOCALE_SYSTEM_DEFAULT ;
 int MAX_THEME_APP_NAME ;
 int MAX_THEME_CLASS_NAME ;
 int MAX_THEME_VALUE_NAME ;
 TYPE_2__* MSSTYLES_AddClass (TYPE_1__*,char*,char*) ;
 int MSSTYLES_AddMetric (TYPE_1__*,int,int,int ,scalar_t__) ;
 int MSSTYLES_AddPartState (TYPE_2__*,int,int) ;
 int MSSTYLES_AddProperty (int ,int,int,int ,scalar_t__,int ) ;
 void* MSSTYLES_FindClass (TYPE_1__*,int *,char const*) ;
 int MSSTYLES_GetActiveThemeIni (TYPE_1__*) ;
 scalar_t__ MSSTYLES_LookupProperty (char*,int*,int*) ;
 scalar_t__ MSSTYLES_ParseIniSectionName (int ,scalar_t__,char*,char*,int*,int*) ;
 int NORM_IGNORECASE ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int UXINI_CloseINI (int ) ;
 int UXINI_GetNextSection (int ,scalar_t__*) ;
 int UXINI_GetNextValue (int ,scalar_t__*,int *,scalar_t__*) ;
 int debugstr_w (char*) ;
 int lstrcmpiW (char*,char const*) ;
 int lstrcpynW (char*,int ,int ) ;
 int min (scalar_t__,int) ;

void MSSTYLES_ParseThemeIni(PTHEME_FILE tf)
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

    ini = MSSTYLES_GetActiveThemeIni(tf);

    while((lpName=UXINI_GetNextSection(ini, &dwLen)))
    {
        if(CompareStringW(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE, lpName, dwLen, szSysMetrics, -1) == CSTR_EQUAL)
        {
            while((lpName=UXINI_GetNextValue(ini, &dwLen, &lpValue, &dwValueLen)))
            {
                lstrcpynW(szPropertyName, lpName, min(dwLen+1, sizeof(szPropertyName)/sizeof(szPropertyName[0])));
                if(MSSTYLES_LookupProperty(szPropertyName, &iPropertyPrimitive, &iPropertyId))
                {

                   MSSTYLES_AddMetric(tf, iPropertyPrimitive, iPropertyId, lpValue, dwValueLen);
                }
                else
                {
                    TRACE("Unknown system metric %s\n", debugstr_w(szPropertyName));
                }
            }
            continue;
        }

        if(MSSTYLES_ParseIniSectionName(lpName, dwLen, szAppName, szClassName, &iPartId, &iStateId))
        {
            BOOL isGlobal = FALSE;
            if(!lstrcmpiW(szClassName, szGlobals))
            {
                isGlobal = TRUE;
            }
            cls = MSSTYLES_AddClass(tf, szAppName, szClassName);
            ps = MSSTYLES_AddPartState(cls, iPartId, iStateId);

            while((lpName=UXINI_GetNextValue(ini, &dwLen, &lpValue, &dwValueLen)))
            {
                lstrcpynW(szPropertyName, lpName, min(dwLen+1, sizeof(szPropertyName)/sizeof(szPropertyName[0])));
                if(MSSTYLES_LookupProperty(szPropertyName, &iPropertyPrimitive, &iPropertyId))
                {
                    MSSTYLES_AddProperty(ps, iPropertyPrimitive, iPropertyId, lpValue, dwValueLen, isGlobal);
                }
                else
                {
                    TRACE("Unknown property %s\n", debugstr_w(szPropertyName));
                }
            }
        }
    }


    globals = MSSTYLES_FindClass(tf, ((void*)0), szGlobals);
    cls = tf->classes;
    while(cls)
    {
        if(*cls->szAppName)
        {
            cls->overrides = MSSTYLES_FindClass(tf, ((void*)0), cls->szClassName);
            if(!cls->overrides)
            {
                TRACE("No overrides found for app %s class %s\n", debugstr_w(cls->szAppName), debugstr_w(cls->szClassName));
            }
            else
            {
                cls->overrides = globals;
            }
        }
        else
        {

            if(cls != globals)
                cls->overrides = globals;
        }
        cls = cls->next;
    }
    UXINI_CloseINI(ini);

    if(!tf->classes) {
        ERR("Failed to parse theme ini\n");
    }
}
