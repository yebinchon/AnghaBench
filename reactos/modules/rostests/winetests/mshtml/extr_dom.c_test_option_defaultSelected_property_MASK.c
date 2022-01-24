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
typedef  int /*<<< orphan*/  IHTMLOptionElement ;

/* Variables and functions */
 int VARIANT_FALSE ; 
 int VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(IHTMLOptionElement *option)
{
    FUNC0(option, VARIANT_FALSE);
    FUNC3(option, VARIANT_FALSE);

    FUNC1(option, 0x100); /* Invalid value */
    FUNC0(option, VARIANT_FALSE);
    FUNC3(option, VARIANT_FALSE);

    FUNC1(option, VARIANT_TRUE);
    FUNC0(option, VARIANT_TRUE);
    FUNC3(option, VARIANT_FALSE);

    FUNC1(option, 0x100); /* Invalid value */
    FUNC0(option, VARIANT_FALSE);
    FUNC3(option, VARIANT_FALSE);

    FUNC2(option, VARIANT_TRUE);
    FUNC3(option, VARIANT_TRUE);
    FUNC0(option, VARIANT_FALSE);

    FUNC1(option, VARIANT_TRUE);
    FUNC0(option, VARIANT_TRUE);
    FUNC3(option, VARIANT_TRUE);

    /* Restore defaultSelected */
    FUNC1(option, VARIANT_TRUE);
    FUNC2(option, VARIANT_FALSE);
}