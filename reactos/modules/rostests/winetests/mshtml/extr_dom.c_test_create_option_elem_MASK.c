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
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC7(IHTMLDocument2 *doc)
{
    IHTMLOptionElement *option;

    option = FUNC1(doc, "test text", "test value");

    FUNC5(option, "new text");
    FUNC6(option, "new value");
    FUNC3(option, 0);
    FUNC2(option);
    FUNC4(option, VARIANT_TRUE);
    FUNC4(option, VARIANT_FALSE);

    FUNC0(option);
}