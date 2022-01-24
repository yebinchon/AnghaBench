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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC1(WCHAR *dest, UINT value) {
    static const WCHAR formatW[] = {'%','u',0};
    DWORD ret = 0;

    if(!dest) {
        WCHAR tmp[11];
        ret = FUNC0(tmp, formatW, value);
    } else
        ret = FUNC0(dest, formatW, value);

    return ret;
}