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
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,short) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    BSTR left, right;
    int mode, ret;
    HRESULT hres;
    short val;

    FUNC3("(%s %s ...)\n", FUNC5(args), FUNC5(args+1));

    FUNC4(args_cnt == 2 || args_cnt == 3);

    if (args_cnt == 3) {
        hres = FUNC9(args+2, &mode);
        if(FUNC0(hres))
            return hres;

        if (mode != 0 && mode != 1) {
            FUNC1("unknown compare mode = %d\n", mode);
            return E_FAIL;
        }
    }
    else
        mode = 0;

    hres = FUNC10(args, &left);
    if(FUNC0(hres))
        return hres;

    hres = FUNC10(args+1, &right);
    if(FUNC0(hres))
    {
        FUNC2(left);
        return hres;
    }

    ret = mode ? FUNC8(left, right) : FUNC7(left, right);
    val = ret < 0 ? -1 : (ret > 0 ? 1 : 0);

    FUNC2(left);
    FUNC2(right);
    return FUNC6(res, val);
}