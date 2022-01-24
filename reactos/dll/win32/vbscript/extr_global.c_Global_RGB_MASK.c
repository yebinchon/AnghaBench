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
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VBSE_ILLEGAL_FUNC_CALL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static HRESULT FUNC8(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    int i, color[3];

    FUNC3("%s %s %s\n", FUNC5(arg), FUNC5(arg + 1), FUNC5(arg + 2));

    FUNC4(args_cnt == 3);

    for(i = 0; i < 3; i++) {
        hres = FUNC7(arg + i, color + i);
        if(FUNC0(hres))
            return hres;
        if(color[i] > 255)
            color[i] = 255;
        if(color[i] < 0)
            return FUNC1(VBSE_ILLEGAL_FUNC_CALL);
    }

    return FUNC6(res, FUNC2(color[0], color[1], color[2]));
}