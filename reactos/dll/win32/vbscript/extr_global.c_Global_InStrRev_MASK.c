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
typedef  int /*<<< orphan*/  const* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  VBSE_ILLEGAL_NULL_USE ; 
 scalar_t__ VT_NULL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC14(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    int start, ret = 0;
    BSTR str1, str2;
    HRESULT hres;

    FUNC6("%s %s arg_cnt=%u\n", FUNC9(args), FUNC9(args+1), args_cnt);

    if(args_cnt > 3) {
        FUNC1("Unsupported args\n");
        return E_NOTIMPL;
    }

    FUNC8(2 <= args_cnt && args_cnt <= 4);

    if(FUNC7(args) == VT_NULL || FUNC7(args+1) == VT_NULL || (args_cnt > 2 && FUNC7(args+2) == VT_NULL))
        return FUNC2(VBSE_ILLEGAL_NULL_USE);

    hres = FUNC13(args, &str1);
    if(FUNC0(hres))
        return hres;

    hres = FUNC13(args+1, &str2);
    if(FUNC3(hres)) {
        if(args_cnt > 2) {
            hres = FUNC12(args+2, &start);
            if(FUNC3(hres) && start <= 0) {
                FUNC1("Unsupported start %d\n", start);
                hres = E_NOTIMPL;
            }
        }else {
            start = FUNC5(str1);
        }
    } else {
        str2 = NULL;
    }

    if(FUNC3(hres)) {
        const WCHAR *ptr;
        size_t len;

        len = FUNC5(str2);
        if(start >= len && start <= FUNC5(str1)) {
            for(ptr = str1+start-FUNC5(str2); ptr >= str1; ptr--) {
                if(!FUNC10(ptr, str2, len*sizeof(WCHAR))) {
                    ret = ptr-str1+1;
                    break;
                }
            }
        }
    }

    FUNC4(str1);
    FUNC4(str2);
    if(FUNC0(hres))
        return hres;

    return FUNC11(res, ret);
}