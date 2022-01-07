
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ptr; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef char const WCHAR ;
typedef int LONG ;


 int FIXME (char*) ;
 int hex_to_int (char const) ;
 scalar_t__ is_identifier_char (char) ;
 int tLong ;
 int tShort ;

__attribute__((used)) static int parse_hex_literal(parser_ctx_t *ctx, LONG *ret)
{
    const WCHAR *begin = ctx->ptr;
    LONG l = 0, d;

    while((d = hex_to_int(*++ctx->ptr)) != -1)
        l = l*16 + d;

    if(begin + 9 < ctx->ptr || (*ctx->ptr != '&' && is_identifier_char(*ctx->ptr))) {
        FIXME("invalid literal\n");
        return 0;
    }

    if(*ctx->ptr == '&')
        ctx->ptr++;

    *ret = l;
    return (short)l == l ? tShort : tLong;
}
