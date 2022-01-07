
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ parser_ctx_t ;



__attribute__((used)) static void skip_spaces(parser_ctx_t *ctx)
{
    while(*ctx->ptr == ' ' || *ctx->ptr == '\t')
        ctx->ptr++;
}
