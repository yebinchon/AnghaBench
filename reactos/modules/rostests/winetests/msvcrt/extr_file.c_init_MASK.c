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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 void* __pioinfo ; 
 void* p__get_fmode ; 
 void* p__set_fmode ; 
 void* p__wfopen_s ; 
 void* p_fopen_s ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    HMODULE hmod = FUNC0("msvcrt.dll");

    FUNC2(LC_CTYPE, "C");

    p_fopen_s = (void*)FUNC1(hmod, "fopen_s");
    p__wfopen_s = (void*)FUNC1(hmod, "_wfopen_s");
    __pioinfo = (void*)FUNC1(hmod, "__pioinfo");
    p__get_fmode = (void*)FUNC1(hmod, "_get_fmode");
    p__set_fmode = (void*)FUNC1(hmod, "_set_fmode");
}