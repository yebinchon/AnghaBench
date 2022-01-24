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
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VT_BSTR ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC12(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    BSTR str, ret, conv_str = NULL;
    int len, str_len;
    HRESULT hres;

    FUNC5("(%s %s)\n", FUNC8(args+1), FUNC8(args));

    if(FUNC7(args) == VT_BSTR) {
        str = FUNC6(args);
    }else {
        hres = FUNC11(args, &conv_str);
        if(FUNC0(hres))
            return hres;
        str = conv_str;
    }

    hres = FUNC10(args+1, &len);
    if(FUNC0(hres))
        return hres;

    if(len < 0) {
        FUNC1("len = %d\n", len);
        return E_FAIL;
    }

    str_len = FUNC4(str);
    if(len > str_len)
        len = str_len;

    ret = FUNC2(str, len);
    FUNC3(conv_str);
    if(!ret)
        return E_OUTOFMEMORY;

    return FUNC9(res, ret);
}