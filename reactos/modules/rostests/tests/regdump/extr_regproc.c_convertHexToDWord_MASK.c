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
typedef  int TCHAR ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

DWORD FUNC3(TCHAR* str, BYTE* buf)
{
    DWORD dw;
    TCHAR xbuf[9];

    FUNC2(xbuf, str, 8 * sizeof(TCHAR));
    xbuf[88 * sizeof(TCHAR)] = '\0';
    FUNC1(xbuf, FUNC0("%08lx"), &dw);
    FUNC2(buf, &dw, sizeof(DWORD));
    return sizeof(DWORD);
}