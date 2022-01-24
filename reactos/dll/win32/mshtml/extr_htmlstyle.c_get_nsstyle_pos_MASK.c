#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  styleid_t ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  nsstyle; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_1__ HTMLStyle ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pxW ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC7 (int /*<<< orphan*/  const*,scalar_t__**,int) ; 

__attribute__((used)) static HRESULT FUNC8(HTMLStyle *This, styleid_t sid, float *p)
{
    nsAString str_value;
    HRESULT hres;

    FUNC1("%p %d %p\n", This, sid, p);

    *p = 0.0f;

    FUNC5(&str_value, NULL);

    hres = FUNC2(This->nsstyle, sid, &str_value);
    if(hres == S_OK)
    {
        WCHAR *ptr;
        const PRUnichar *value;

        FUNC4(&str_value, &value);
        if(value)
        {
            *p = FUNC7(value, &ptr, 10);

            if(*ptr && FUNC6(ptr, pxW))
            {
                FUNC3(&str_value);
                FUNC0("only px values are currently supported\n");
                hres = E_FAIL;
            }
        }
    }

    FUNC1("ret %f\n", *p);

    FUNC3(&str_value);
    return hres;
}