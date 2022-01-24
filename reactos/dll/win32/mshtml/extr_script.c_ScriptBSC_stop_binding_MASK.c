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
struct TYPE_5__ {scalar_t__ readystate; int /*<<< orphan*/  IHTMLScriptElement_iface; } ;
struct TYPE_4__ {TYPE_2__* script_elem; scalar_t__ size; int /*<<< orphan*/ * buf; int /*<<< orphan*/  hres; } ;
typedef  TYPE_1__ ScriptBSC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  READYSTATE_LOADED ; 
 scalar_t__ READYSTATE_LOADING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(BSCallback *bsc, HRESULT result)
{
    ScriptBSC *This = FUNC4(bsc);

    This->hres = result;

    if(FUNC2(result)) {
        if(This->script_elem->readystate == READYSTATE_LOADING)
            FUNC5(This->script_elem, READYSTATE_LOADED);
    }else {
        FUNC0("binding failed %08x\n", result);
        FUNC3(This->buf);
        This->buf = NULL;
        This->size = 0;
    }

    FUNC1(&This->script_elem->IHTMLScriptElement_iface);
    This->script_elem = NULL;
    return S_OK;
}