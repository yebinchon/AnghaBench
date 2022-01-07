
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ isspace (char) ;
 int lstrcpynW (int ,char*,int ) ;
 int min (int ,int) ;

__attribute__((used)) static BOOL MSSTYLES_GetNextToken(LPCWSTR lpStringStart, LPCWSTR lpStringEnd, LPCWSTR *lpValEnd, LPWSTR lpBuff, DWORD buffSize) {
    LPCWSTR cur = lpStringStart;
    LPCWSTR start;
    LPCWSTR end;

    while(cur < lpStringEnd && (isspace(*cur) || *cur == ',')) cur++;
    if(cur >= lpStringEnd) {
        return FALSE;
    }
    start = cur;
    while(cur < lpStringEnd && *cur != '\n'&& *cur != ',') cur++;
    end = cur;
    while(isspace(*(end-1))) end--;

    lstrcpynW(lpBuff, start, min(buffSize, end-start+1));

    if(lpValEnd) *lpValEnd = cur;
    return TRUE;
}
