#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* desc; } ;
typedef  TYPE_2__ vbdisp_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int MB_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC9(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    BSTR prompt, title = NULL;
    int type = MB_OK;
    HRESULT hres;

    FUNC4("\n");

    FUNC5(1 <= args_cnt && args_cnt <= 5);

    hres = FUNC8(args, &prompt);
    if(FUNC0(hres))
        return hres;

    if(args_cnt > 1)
        hres = FUNC7(args+1, &type);

    if(FUNC2(hres) && args_cnt > 2)
        hres = FUNC8(args+2, &title);

    if(FUNC2(hres) && args_cnt > 3) {
        FUNC1("unsupported arg_cnt %d\n", args_cnt);
        hres = E_NOTIMPL;
    }

    if(FUNC2(hres))
        hres = FUNC6(This->desc->ctx, prompt, type, title, res);

    FUNC3(prompt);
    FUNC3(title);
    return hres;
}