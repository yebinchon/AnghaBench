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
typedef  int /*<<< orphan*/  vbdisp_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    VARIANT dst;

    FUNC1("(%s)\n", FUNC5(arg));

    FUNC4(args_cnt == 1);

    hres = FUNC2(arg, &dst);
    if(FUNC0(hres))
        return hres;

    if (res)
        *res = dst;
    else
        FUNC3(&dst);

    return S_OK;
}