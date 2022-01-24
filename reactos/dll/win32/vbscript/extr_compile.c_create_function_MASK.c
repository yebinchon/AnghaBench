#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int arg_cnt; TYPE_1__* args; int /*<<< orphan*/  is_public; int /*<<< orphan*/  type; int /*<<< orphan*/  code_ctx; scalar_t__ array_cnt; scalar_t__ var_cnt; int /*<<< orphan*/ * vars; void* name; } ;
typedef  TYPE_2__ function_t ;
struct TYPE_16__ {int /*<<< orphan*/  body; TYPE_5__* args; int /*<<< orphan*/  is_public; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ function_decl_t ;
struct TYPE_17__ {int /*<<< orphan*/  code; } ;
typedef  TYPE_4__ compile_ctx_t ;
typedef  int /*<<< orphan*/  arg_desc_t ;
struct TYPE_18__ {int /*<<< orphan*/  by_ref; int /*<<< orphan*/  name; struct TYPE_18__* next; } ;
typedef  TYPE_5__ arg_decl_t ;
struct TYPE_14__ {int /*<<< orphan*/  by_ref; void* name; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(compile_ctx_t *ctx, function_decl_t *decl, function_t **ret)
{
    function_t *func;
    HRESULT hres;

    if(FUNC7(ctx, decl->name) || FUNC8(ctx, decl->name) || FUNC6(ctx, decl->name, FALSE)) {
        FUNC1("%s: redefinition\n", FUNC5(decl->name));
        return E_FAIL;
    }

    func = FUNC3(ctx->code, sizeof(*func));
    if(!func)
        return E_OUTOFMEMORY;

    func->name = FUNC4(ctx->code, decl->name);
    if(!func->name)
        return E_OUTOFMEMORY;

    func->vars = NULL;
    func->var_cnt = 0;
    func->array_cnt = 0;
    func->code_ctx = ctx->code;
    func->type = decl->type;
    func->is_public = decl->is_public;

    func->arg_cnt = 0;
    if(decl->args) {
        arg_decl_t *arg;
        unsigned i;

        for(arg = decl->args; arg; arg = arg->next)
            func->arg_cnt++;

        func->args = FUNC3(ctx->code, func->arg_cnt * sizeof(arg_desc_t));
        if(!func->args)
            return E_OUTOFMEMORY;

        for(i = 0, arg = decl->args; arg; arg = arg->next, i++) {
            func->args[i].name = FUNC4(ctx->code, arg->name);
            if(!func->args[i].name)
                return E_OUTOFMEMORY;
            func->args[i].by_ref = arg->by_ref;
        }
    }else {
        func->args = NULL;
    }

    hres = FUNC2(ctx, decl->body, func);
    if(FUNC0(hres))
        return hres;

    *ret = func;
    return S_OK;
}