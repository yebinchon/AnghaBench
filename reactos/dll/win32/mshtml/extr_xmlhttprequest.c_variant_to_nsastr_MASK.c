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
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
#define  VT_BSTR 131 
#define  VT_EMPTY 130 
#define  VT_ERROR 129 
#define  VT_NULL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(VARIANT var, nsAString *ret)
{
    switch(FUNC2(&var)) {
        case VT_NULL:
        case VT_ERROR:
        case VT_EMPTY:
            FUNC4(ret, NULL);
            return S_OK;
        case VT_BSTR:
            FUNC5(ret, FUNC1(&var));
            return S_OK;
        default:
            FUNC0("Unsupported VARIANT: %s\n", FUNC3(&var));
            return E_INVALIDARG;
    }
}