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
typedef  float WCHAR ;
typedef  float const* LPWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,float const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,float const*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 float const* empty ; 
 int /*<<< orphan*/  FUNC4 (float const*,float const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  test_task ; 
 scalar_t__ FUNC8 (float const*) ; 

__attribute__((used)) static void FUNC9(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR parameters;
    const WCHAR parameters_a[] = {'f','o','o','.','t','x','t', 0};
    const WCHAR parameters_b[] = {'f','o','o','.','t','x','t',' ',
        'b','a','r','.','t','x','t', 0};

    setup = FUNC6();
    FUNC5(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        FUNC7("Failed to create task.  Skipping tests.\n");
        return;
    }

    /* Get parameters before setting them */
    hres = FUNC1(test_task, &parameters);
    FUNC5(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(parameters, empty),
                "Got %s, expected empty string\n", FUNC8(parameters));
        FUNC0(parameters);
    }

    /* Set parameters to a simple string */
    hres = FUNC2(test_task, parameters_a);
    FUNC5(hres == S_OK, "Failed setting parameters %s: %08x\n",
            FUNC8(parameters_a), hres);
    hres = FUNC1(test_task, &parameters);
    FUNC5(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(parameters, parameters_a), "Got %s, expected %s\n",
                FUNC8(parameters), FUNC8(parameters_a));
        FUNC0(parameters);
    }

    /* Update parameters to a different simple string */
    hres = FUNC2(test_task, parameters_b);
    FUNC5(hres == S_OK, "Failed setting parameters %s: %08x\n",
            FUNC8(parameters_b), hres);
    hres = FUNC1(test_task, &parameters);
    FUNC5(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(parameters, parameters_b), "Got %s, expected %s\n",
                FUNC8(parameters), FUNC8(parameters_b));
        FUNC0(parameters);
    }

    /* Clear parameters */
    hres = FUNC2(test_task, empty);
    FUNC5(hres == S_OK, "Failed setting parameters %s: %08x\n",
            FUNC8(empty), hres);
    hres = FUNC1(test_task, &parameters);
    FUNC5(hres == S_OK, "GetParameters failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(parameters, empty),
                "Got %s, expected empty string\n", FUNC8(parameters));
        FUNC0(parameters);
    }

    FUNC3();
    return;
}