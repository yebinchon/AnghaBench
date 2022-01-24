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
typedef  char WCHAR ;
typedef  char const* LPWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char const* empty ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  test_task ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR comment;
    const WCHAR comment_a[] = {'C','o','m','m','e','n','t','.', 0};
    const WCHAR comment_b[] = {'L','o','n','g','e','r',' ',
            'c','o','m','m','e','n','t','.', 0};

    setup = FUNC6();
    FUNC5(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        FUNC7("Failed to create task.  Skipping tests.\n");
        return;
    }

    /* Get comment before setting it*/
    hres = FUNC1(test_task, &comment);
    FUNC5(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(comment, empty),
                "Got %s, expected empty string\n", FUNC8(comment));
        FUNC0(comment);
    }

    /* Set comment to a simple string */
    hres = FUNC2(test_task, comment_a);
    FUNC5(hres == S_OK, "Failed setting comment %s: %08x\n",
            FUNC8(comment_a), hres);
    hres = FUNC1(test_task, &comment);
    FUNC5(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(comment, comment_a), "Got %s, expected %s\n",
                FUNC8(comment), FUNC8(comment_a));
        FUNC0(comment);
    }

    /* Update comment to a different simple string */
    hres = FUNC2(test_task, comment_b);
    FUNC5(hres == S_OK, "Failed setting comment %s: %08x\n",
            FUNC8(comment_b), hres);
    hres = FUNC1(test_task, &comment);
    FUNC5(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(comment, comment_b), "Got %s, expected %s\n",
                FUNC8(comment), FUNC8(comment_b));
        FUNC0(comment);
    }

    /* Clear comment */
    hres = FUNC2(test_task, empty);
    FUNC5(hres == S_OK, "Failed setting comment %s: %08x\n",
            FUNC8(empty), hres);
    hres = FUNC1(test_task, &comment);
    FUNC5(hres == S_OK, "GetComment failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(comment, empty),
                "Got %s, expected empty string\n", FUNC8(comment));
        FUNC0(comment);
    }

    FUNC3();
    return;
}