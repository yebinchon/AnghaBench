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
typedef  void* WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  void** BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void***) ; 

__attribute__((used)) static HRESULT FUNC6(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    WCHAR *ptr1, *ptr2, ch;
    BSTR ret;
    HRESULT hres;

    FUNC2("%s\n", FUNC3(arg));

    hres = FUNC5(arg, &ret);
    if(FUNC0(hres))
        return hres;

    ptr1 = ret;
    ptr2 = ret + FUNC1(ret)-1;
    while(ptr1 < ptr2) {
        ch = *ptr1;
        *ptr1++ = *ptr2;
        *ptr2-- = ch;
    }

    return FUNC4(res, ret);
}