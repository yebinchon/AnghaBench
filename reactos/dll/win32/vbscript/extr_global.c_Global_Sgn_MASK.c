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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VBSE_ILLEGAL_NULL_USE ; 
 scalar_t__ VT_NULL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,short) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,double*) ; 

__attribute__((used)) static HRESULT FUNC8(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    double v;
    short val;
    HRESULT hres;

    FUNC2("(%s)\n", FUNC5(arg));

    FUNC4(args_cnt == 1);

    if(FUNC3(arg) == VT_NULL)
        return FUNC1(VBSE_ILLEGAL_NULL_USE);

    hres = FUNC7(arg, &v);
    if (FUNC0(hres))
        return hres;

    val = v == 0 ? 0 : (v > 0 ? 1 : -1);
    return FUNC6(res, val);
}