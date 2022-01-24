#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  main_code; } ;
typedef  TYPE_1__ vbscode_t ;
struct TYPE_12__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
typedef  TYPE_2__ vbdisp_t ;
struct TYPE_13__ {TYPE_4__* procs; } ;
typedef  TYPE_3__ script_ctx_t ;
struct TYPE_14__ {struct TYPE_14__* next; int /*<<< orphan*/ * value_func; int /*<<< orphan*/  builtin_props; int /*<<< orphan*/  builtin_prop_cnt; TYPE_3__* ctx; } ;
typedef  TYPE_4__ class_desc_t ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__**) ; 
 TYPE_4__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  procedure_props ; 

HRESULT FUNC5(script_ctx_t *ctx, vbscode_t *code, IDispatch **ret)
{
    class_desc_t *desc;
    vbdisp_t *vbdisp;
    HRESULT hres;

    desc = FUNC3(sizeof(*desc));
    if(!desc)
        return E_OUTOFMEMORY;

    desc->ctx = ctx;
    desc->builtin_prop_cnt = FUNC0(procedure_props);
    desc->builtin_props = procedure_props;
    desc->value_func = &code->main_code;

    hres = FUNC2(desc, &vbdisp);
    if(FUNC1(hres)) {
        FUNC4(desc);
        return hres;
    }

    desc->next = ctx->procs;
    ctx->procs = desc;

    *ret = (IDispatch*)&vbdisp->IDispatchEx_iface;
    return S_OK;
}