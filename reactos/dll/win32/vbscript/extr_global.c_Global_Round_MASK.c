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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
#define  VT_BOOL 131 
#define  VT_I2 130 
#define  VT_I4 129 
#define  VT_R8 128 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,double*) ; 

__attribute__((used)) static HRESULT FUNC8(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    double n;
    HRESULT hres;

    FUNC1("%s\n", FUNC4(arg));

    if(!res)
        return S_OK;

    switch(FUNC3(arg)) {
    case VT_I2:
    case VT_I4:
    case VT_BOOL:
        *res = *arg;
        return S_OK;
    case VT_R8:
        n = FUNC2(arg);
        break;
    default:
        hres = FUNC7(arg, &n);
        if(FUNC0(hres))
            return hres;
    }

    return FUNC5(res, FUNC6(n));
}