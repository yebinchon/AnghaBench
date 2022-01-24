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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    int len;
    DWORD GLE;

    FUNC1(0);
    len = FUNC2(CP_ACP, 0, NULL, 0, NULL, 0, NULL, NULL);
    GLE = FUNC0();
    FUNC3(!len && GLE == ERROR_INVALID_PARAMETER,
        "WideCharToMultiByte returned %d with GLE=%u (expected 0 with ERROR_INVALID_PARAMETER)\n",
        len, GLE);

    FUNC1(0);
    len = FUNC2(CP_ACP, 0, NULL, -1, NULL, 0, NULL, NULL);
    GLE = FUNC0();
    FUNC3(!len && GLE == ERROR_INVALID_PARAMETER,
        "WideCharToMultiByte returned %d with GLE=%u (expected 0 with ERROR_INVALID_PARAMETER)\n",
        len, GLE);
}