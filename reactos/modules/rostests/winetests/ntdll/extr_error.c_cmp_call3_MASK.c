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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strict ; 

__attribute__((used)) static void FUNC2(NTSTATUS win_nt, ULONG win32_1, ULONG win32_2, const char* message)
{
    ULONG err;

    err = FUNC1(win_nt);
    FUNC0(err == win32_1 || (!strict && err == win32_2),
       "%s (%x): got %u, expected %u or %u\n",
            message, win_nt, err, win32_1, win32_2);
}