
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state ;
typedef int sec ;
typedef int part ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int MAX_THEME_APP_NAME ;
 int MAX_THEME_CLASS_NAME ;
 int MSSTYLES_LookupPartState (char*,char*,char*,int*,int*) ;
 int lstrcpynW (char*,char*,int) ;
 int min (scalar_t__,int) ;
 char* strchrW (char*,char) ;

__attribute__((used)) static BOOL MSSTYLES_ParseIniSectionName(LPCWSTR lpSection, DWORD dwLen, LPWSTR szAppName, LPWSTR szClassName, int *iPartId, int *iStateId)
{
    WCHAR sec[255];
    WCHAR part[60] = {'\0'};
    WCHAR state[60] = {'\0'};
    LPWSTR tmp;
    LPWSTR comp;
    lstrcpynW(sec, lpSection, min(dwLen+1, sizeof(sec)/sizeof(sec[0])));

    *szAppName = 0;
    *szClassName = 0;
    *iPartId = 0;
    *iStateId = 0;
    comp = sec;

    tmp = strchrW(comp, ':');
    if(tmp) {
        *tmp++ = 0;
        tmp++;
        lstrcpynW(szAppName, comp, MAX_THEME_APP_NAME);
        comp = tmp;
    }

    tmp = strchrW(comp, '.');
    if(tmp) {
        *tmp++ = 0;
        lstrcpynW(szClassName, comp, MAX_THEME_CLASS_NAME);
        comp = tmp;

        tmp = strchrW(comp, '(');
        if(tmp) {
            *tmp++ = 0;
            lstrcpynW(part, comp, sizeof(part)/sizeof(part[0]));
            comp = tmp;

            tmp = strchrW(comp, ')');
            if (!tmp)
                return FALSE;
            *tmp = 0;
            lstrcpynW(state, comp, sizeof(state)/sizeof(state[0]));
        }
        else {
            lstrcpynW(part, comp, sizeof(part)/sizeof(part[0]));
        }
    }
    else {
        tmp = strchrW(comp, '(');
        if(tmp) {
            *tmp++ = 0;
            lstrcpynW(szClassName, comp, MAX_THEME_CLASS_NAME);
            comp = tmp;

            tmp = strchrW(comp, ')');
            if (!tmp)
                return FALSE;
            *tmp = 0;
            lstrcpynW(state, comp, sizeof(state)/sizeof(state[0]));
        }
        else {
            lstrcpynW(szClassName, comp, MAX_THEME_CLASS_NAME);
        }
    }
    if(!*szClassName) return FALSE;
    return MSSTYLES_LookupPartState(szClassName, part[0]?part:((void*)0), state[0]?state:((void*)0), iPartId, iStateId);
}
