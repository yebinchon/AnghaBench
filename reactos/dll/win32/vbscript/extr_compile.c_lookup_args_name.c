
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* func; } ;
typedef TYPE_3__ compile_ctx_t ;
typedef int WCHAR ;
struct TYPE_6__ {unsigned int arg_cnt; TYPE_1__* args; } ;
struct TYPE_5__ {int name; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpiW (int ,int const*) ;

__attribute__((used)) static BOOL lookup_args_name(compile_ctx_t *ctx, const WCHAR *name)
{
    unsigned i;

    for(i = 0; i < ctx->func->arg_cnt; i++) {
        if(!strcmpiW(ctx->func->args[i].name, name))
            return TRUE;
    }

    return FALSE;
}
