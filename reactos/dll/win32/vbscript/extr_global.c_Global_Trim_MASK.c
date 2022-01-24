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
 scalar_t__* FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ VT_BSTR ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__**) ; 

__attribute__((used)) static HRESULT FUNC11(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    BSTR str, conv_str = NULL;
    WCHAR *begin_ptr, *end_ptr;
    HRESULT hres;

    FUNC4("%s\n", FUNC7(arg));

    if(FUNC6(arg) == VT_BSTR) {
        str = FUNC5(arg);
    }else {
        hres = FUNC10(arg, &conv_str);
        if(FUNC0(hres))
            return hres;
        str = conv_str;
    }

    for(begin_ptr = str; *begin_ptr && FUNC8(*begin_ptr); begin_ptr++);
    for(end_ptr = str+FUNC3(str); end_ptr-1 > begin_ptr && FUNC8(*(end_ptr-1)); end_ptr--);

    str = FUNC1(begin_ptr, end_ptr-begin_ptr);
    FUNC2(conv_str);
    if(!str)
        return E_OUTOFMEMORY;

    return FUNC9(res, str);
}