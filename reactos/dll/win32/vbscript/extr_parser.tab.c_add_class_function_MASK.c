#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* hres; } ;
typedef  TYPE_1__ parser_ctx_t ;
struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* next; struct TYPE_9__* next_prop_func; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ function_decl_t ;
struct TYPE_10__ {TYPE_2__* funcs; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ class_decl_t ;

/* Variables and functions */
 void* E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC_FUNCTION ; 
 scalar_t__ FUNC_SUB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static class_decl_t *FUNC3(parser_ctx_t *ctx, class_decl_t *class_decl, function_decl_t *decl)
{
    function_decl_t *iter;

    for(iter = class_decl->funcs; iter; iter = iter->next) {
        if(!FUNC2(iter->name, decl->name)) {
            if(decl->type == FUNC_SUB || decl->type == FUNC_FUNCTION) {
                FUNC0("Redefinition of %s::%s\n", FUNC1(class_decl->name), FUNC1(decl->name));
                ctx->hres = E_FAIL;
                return NULL;
            }

            while(1) {
                if(iter->type == decl->type) {
                    FUNC0("Redefinition of %s::%s\n", FUNC1(class_decl->name), FUNC1(decl->name));
                    ctx->hres = E_FAIL;
                    return NULL;
                }
                if(!iter->next_prop_func)
                    break;
                iter = iter->next_prop_func;
            }

            iter->next_prop_func = decl;
            return class_decl;
        }
    }

    decl->next = class_decl->funcs;
    class_decl->funcs = decl;
    return class_decl;
}