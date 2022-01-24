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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_HANDLE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hRes;

    hRes = FUNC0(NULL);
    FUNC1( hRes == E_HANDLE, "Expected E_HANDLE, got 0x%08x\n", hRes);
    hRes = FUNC0(INVALID_HANDLE_VALUE);
    FUNC1( hRes == E_HANDLE, "Expected E_HANDLE, got 0x%08x\n", hRes);
}