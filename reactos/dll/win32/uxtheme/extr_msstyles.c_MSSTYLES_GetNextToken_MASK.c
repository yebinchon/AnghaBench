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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC3(LPCWSTR lpStringStart, LPCWSTR lpStringEnd, LPCWSTR *lpValEnd, LPWSTR lpBuff, DWORD buffSize) {
    LPCWSTR cur = lpStringStart;
    LPCWSTR start;
    LPCWSTR end;

    while(cur < lpStringEnd && (FUNC0(*cur) || *cur == ',')) cur++;
    if(cur >= lpStringEnd) {
        return FALSE;
    }
    start = cur;
    while(cur < lpStringEnd && *cur != '\n'&& *cur != ',') cur++;
    end = cur;
    while(FUNC0(*(end-1))) end--;

    FUNC1(lpBuff, start, FUNC2(buffSize, end-start+1));

    if(lpValEnd) *lpValEnd = cur;
    return TRUE;
}