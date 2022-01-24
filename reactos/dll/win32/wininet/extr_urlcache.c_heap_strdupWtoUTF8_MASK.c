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
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline char *FUNC2(LPCWSTR str)
{
    char *ret = NULL;

    if(str) {
        DWORD size = FUNC0(CP_UTF8, 0, str, -1, NULL, 0, NULL, NULL);
        ret = FUNC1(size);
        if(ret)
            FUNC0(CP_UTF8, 0, str, -1, ret, size, NULL, NULL);
    }

    return ret;
}