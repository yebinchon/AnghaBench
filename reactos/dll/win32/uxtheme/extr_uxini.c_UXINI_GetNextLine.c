
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* lpCurLoc; } ;
typedef TYPE_1__* PUXINI_FILE ;
typedef char* LPCWSTR ;
typedef int DWORD ;


 scalar_t__ UXINI_eof (TYPE_1__*) ;
 scalar_t__ UXINI_isspace (char) ;

__attribute__((used)) static LPCWSTR UXINI_GetNextLine(PUXINI_FILE uf, DWORD *dwLen)
{
    LPCWSTR lpLineEnd;
    LPCWSTR lpLineStart;
    DWORD len;
    do {
        if(UXINI_eof(uf)) return ((void*)0);

        while(!UXINI_eof(uf) && (UXINI_isspace(*uf->lpCurLoc) || *uf->lpCurLoc == '\n')) uf->lpCurLoc++;
        lpLineStart = uf->lpCurLoc;
        lpLineEnd = uf->lpCurLoc;
        while(!UXINI_eof(uf) && *uf->lpCurLoc != '\n' && *uf->lpCurLoc != ';') lpLineEnd = ++uf->lpCurLoc;

        if(*uf->lpCurLoc == ';')
            while(!UXINI_eof(uf) && *uf->lpCurLoc != '\n') uf->lpCurLoc++;
        len = (lpLineEnd - lpLineStart);
        if(*lpLineStart != ';' && len == 0)
            return ((void*)0);
    } while(*lpLineStart == ';');

    while(UXINI_isspace(lpLineStart[len-1])) len--;
    *dwLen = len;

    return lpLineStart;
}
