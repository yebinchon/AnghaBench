
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ function_t ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
typedef TYPE_2__ compile_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpiW (int ,int const*) ;

__attribute__((used)) static BOOL lookup_funcs_name(compile_ctx_t *ctx, const WCHAR *name)
{
    function_t *iter;

    for(iter = ctx->funcs; iter; iter = iter->next) {
        if(!strcmpiW(iter->name, name))
            return TRUE;
    }

    return FALSE;
}
