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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GetProductInfo ; 
 int /*<<< orphan*/  RtlGetVersion ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hmod;

    hmod = FUNC1("kernel32.dll");

    FUNC0(GetProductInfo);

    hmod = FUNC1("ntdll.dll");

    FUNC0(RtlGetVersion);
}