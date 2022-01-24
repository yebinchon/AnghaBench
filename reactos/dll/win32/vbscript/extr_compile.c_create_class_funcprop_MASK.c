#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vbdisp_invoke_type_t ;
struct TYPE_9__ {int /*<<< orphan*/ * entries; int /*<<< orphan*/  is_public; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ vbdisp_funcprop_desc_t ;
struct TYPE_10__ {int type; scalar_t__ is_public; struct TYPE_10__* next_prop_func; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ function_decl_t ;
struct TYPE_11__ {int /*<<< orphan*/  code; } ;
typedef  TYPE_3__ compile_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_UNREACHABLE ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  FUNC_DEFGET 133 
#define  FUNC_FUNCTION 132 
#define  FUNC_PROPGET 131 
#define  FUNC_PROPLET 130 
#define  FUNC_PROPSET 129 
#define  FUNC_SUB 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 size_t VBDISP_CALLGET ; 
 size_t VBDISP_LET ; 
 size_t VBDISP_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(compile_ctx_t *ctx, function_decl_t *func_decl, vbdisp_funcprop_desc_t *desc)
{
    vbdisp_invoke_type_t invoke_type;
    function_decl_t *funcprop_decl;
    HRESULT hres;

    desc->name = FUNC2(ctx->code, func_decl->name);
    if(!desc->name)
        return E_OUTOFMEMORY;

    for(funcprop_decl = func_decl; funcprop_decl; funcprop_decl = funcprop_decl->next_prop_func) {
        switch(funcprop_decl->type) {
        case FUNC_FUNCTION:
        case FUNC_SUB:
        case FUNC_PROPGET:
        case FUNC_DEFGET:
            invoke_type = VBDISP_CALLGET;
            break;
        case FUNC_PROPLET:
            invoke_type = VBDISP_LET;
            break;
        case FUNC_PROPSET:
            invoke_type = VBDISP_SET;
            break;
        DEFAULT_UNREACHABLE;
        }

        FUNC1(!desc->entries[invoke_type]);

        if(funcprop_decl->is_public)
            desc->is_public = TRUE;

        hres = FUNC3(ctx, funcprop_decl, desc->entries+invoke_type);
        if(FUNC0(hres))
            return hres;
    }

    return S_OK;
}