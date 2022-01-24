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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double*) ; 

__attribute__((used)) static HRESULT FUNC4(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;
    double d;

    hres = FUNC3(arg, &d);
    if(FUNC0(hres))
        return hres;

    return FUNC1(res, FUNC2(d));
}