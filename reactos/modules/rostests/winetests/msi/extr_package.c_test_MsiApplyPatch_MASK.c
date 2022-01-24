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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  INSTALLTYPE_DEFAULT ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
    UINT r;

    r = FUNC0(NULL, NULL, INSTALLTYPE_DEFAULT, NULL);
    FUNC1(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);

    r = FUNC0("", NULL, INSTALLTYPE_DEFAULT, NULL);
    FUNC1(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);
}