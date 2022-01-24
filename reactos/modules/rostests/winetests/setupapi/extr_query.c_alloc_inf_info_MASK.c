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
typedef  int /*<<< orphan*/ * PSP_INF_INFORMATION ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PSP_INF_INFORMATION FUNC3(LPCSTR filename, DWORD search, PDWORD size)
{
    PSP_INF_INFORMATION info;
    BOOL ret;

    ret = FUNC2(filename, search, NULL, 0, size);
    if (!ret)
        return NULL;

    info = FUNC1(FUNC0(), 0, *size);
    return info;
}