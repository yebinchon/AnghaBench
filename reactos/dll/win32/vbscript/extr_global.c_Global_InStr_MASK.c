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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_UNREACHABLE ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ VT_BSTR ; 
 scalar_t__ VT_NULL ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static HRESULT FUNC12(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    VARIANT *startv, *str1v, *str2v;
    BSTR str1, str2;
    int start, ret;
    HRESULT hres;

    FUNC3("\n");

    FUNC6(2 <= args_cnt && args_cnt <= 4);

    switch(args_cnt) {
    case 2:
        startv = NULL;
        str1v = args;
        str2v = args+1;
        break;
    case 3:
        startv = args;
        str1v = args+1;
        str2v = args+2;
        break;
    case 4:
        FUNC1("unsupported compare argument %s\n", FUNC7(args));
        return E_NOTIMPL;
    DEFAULT_UNREACHABLE;
    }

    if(startv) {
        hres = FUNC11(startv, &start);
        if(FUNC0(hres))
            return hres;
        if(--start < 0) {
            FUNC1("start %d\n", start);
            return E_FAIL;
        }
    }else {
        start = 0;
    }

    if(FUNC5(str1v) == VT_NULL || FUNC5(str2v) == VT_NULL)
        return FUNC9(res);

    if(FUNC5(str1v) != VT_BSTR) {
        FUNC1("Unsupported str1 type %s\n", FUNC7(str1v));
        return E_NOTIMPL;
    }
    str1 = FUNC4(str1v);

    if(FUNC5(str2v) != VT_BSTR) {
        FUNC1("Unsupported str2 type %s\n", FUNC7(str2v));
        return E_NOTIMPL;
    }
    str2 = FUNC4(str2v);

    if(start < FUNC2(str1)) {
        WCHAR *ptr;

        ptr = FUNC10(str1+start, str2);
        ret = ptr ? ptr-str1+1 : 0;
    }else {
        ret = 0;
    }

    return FUNC8(res, ret);
}