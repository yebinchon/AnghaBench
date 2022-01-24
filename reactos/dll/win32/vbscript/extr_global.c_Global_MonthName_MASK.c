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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static HRESULT FUNC6(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    int month, abbrev = 0;
    BSTR ret;
    HRESULT hres;

    FUNC1("\n");

    FUNC3(args_cnt == 1 || args_cnt == 2);

    hres = FUNC5(args, &month);
    if(FUNC0(hres))
        return hres;

    if(args_cnt == 2) {
        hres = FUNC5(args+1, &abbrev);
        if(FUNC0(hres))
            return hres;
    }

    hres = FUNC2(month, abbrev, 0, &ret);
    if(FUNC0(hres))
        return hres;

    return FUNC4(res, ret);
}