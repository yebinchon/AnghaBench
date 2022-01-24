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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ VT_BSTR ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__**) ; 

__attribute__((used)) static HRESULT FUNC10(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    BSTR str, conv_str = NULL;
    WCHAR *ptr;
    HRESULT hres;

    FUNC3("%s\n", FUNC6(arg));

    if(FUNC5(arg) == VT_BSTR) {
        str = FUNC4(arg);
    }else {
        hres = FUNC9(arg, &conv_str);
        if(FUNC0(hres))
            return hres;
        str = conv_str;
    }

    for(ptr = str; *ptr && FUNC7(*ptr); ptr++);

    str = FUNC1(ptr);
    FUNC2(conv_str);
    if(!str)
        return E_OUTOFMEMORY;

    return FUNC8(res, str);
}