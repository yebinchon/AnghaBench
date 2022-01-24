#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* lpCurLoc; } ;
typedef  TYPE_1__* PUXINI_FILE ;
typedef  char* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static LPCWSTR FUNC2(PUXINI_FILE uf, DWORD *dwLen)
{
    LPCWSTR lpLineEnd;
    LPCWSTR lpLineStart;
    DWORD len;
    do {
        if(FUNC0(uf)) return NULL;
        /* Skip whitespace and empty lines */
        while(!FUNC0(uf) && (FUNC1(*uf->lpCurLoc) || *uf->lpCurLoc == '\n')) uf->lpCurLoc++;
        lpLineStart = uf->lpCurLoc;
        lpLineEnd = uf->lpCurLoc;
        while(!FUNC0(uf) && *uf->lpCurLoc != '\n' && *uf->lpCurLoc != ';') lpLineEnd = ++uf->lpCurLoc;
        /* If comment was found, skip the rest of the line */
        if(*uf->lpCurLoc == ';')
            while(!FUNC0(uf) && *uf->lpCurLoc != '\n') uf->lpCurLoc++;
        len = (lpLineEnd - lpLineStart);
        if(*lpLineStart != ';' && len == 0)
            return NULL;
    } while(*lpLineStart == ';');
    /* Remove whitespace from end of line */
    while(FUNC1(lpLineStart[len-1])) len--;
    *dwLen = len;

    return lpLineStart;
}