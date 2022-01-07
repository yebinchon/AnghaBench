
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int ptr; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef char WCHAR ;


 int strpbrkW (int ,char const*) ;
 int tNL ;

__attribute__((used)) static int comment_line(parser_ctx_t *ctx)
{
    static const WCHAR newlineW[] = {'\n','\r',0};
    ctx->ptr = strpbrkW(ctx->ptr, newlineW);
    if(ctx->ptr)
        ctx->ptr++;
    else
        ctx->ptr = ctx->end;
    return tNL;
}
