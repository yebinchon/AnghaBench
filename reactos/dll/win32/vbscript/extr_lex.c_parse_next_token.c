
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* ptr; char* end; scalar_t__ last_token; int is_html; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef char WCHAR ;


 int FIXME (char*,char,int ) ;
 int check_keywords (TYPE_1__*) ;
 int comment_line (TYPE_1__*) ;
 int debugstr_w (char*) ;
 scalar_t__ isalphaW (char) ;
 int parse_hex_literal (TYPE_1__*,void*) ;
 int parse_identifier (TYPE_1__*,void*) ;
 int parse_numeric_literal (TYPE_1__*,void*) ;
 int parse_string_literal (TYPE_1__*,void*) ;
 int skip_spaces (TYPE_1__*) ;
 int tEMPTYBRACKETS ;
 int tEOF ;
 int tGTEQ ;
 int tLTEQ ;
 int tNEQ ;
 scalar_t__ tNL ;
 int tREM ;

__attribute__((used)) static int parse_next_token(void *lval, parser_ctx_t *ctx)
{
    WCHAR c;

    skip_spaces(ctx);
    if(ctx->ptr == ctx->end)
        return ctx->last_token == tNL ? tEOF : tNL;

    c = *ctx->ptr;

    if('0' <= c && c <= '9')
        return parse_numeric_literal(ctx, lval);

    if(isalphaW(c)) {
        int ret = check_keywords(ctx);
        if(!ret)
            return parse_identifier(ctx, lval);
        if(ret != tREM)
            return ret;
        c = '\'';
    }

    switch(c) {
    case '\n':
    case '\r':
        ctx->ptr++;
        return tNL;
    case '\'':
        return comment_line(ctx);
    case ':':
    case ')':
    case ',':
    case '=':
    case '+':
    case '*':
    case '/':
    case '^':
    case '\\':
    case '.':
    case '_':
        return *ctx->ptr++;
    case '-':
        if(ctx->is_html && ctx->ptr[1] == '-' && ctx->ptr[2] == '>')
            return comment_line(ctx);
        ctx->ptr++;
        return '-';
    case '(':




        ctx->ptr++;
        skip_spaces(ctx);
        if(*ctx->ptr == ')') {
            ctx->ptr++;
            return tEMPTYBRACKETS;
        }
        return '(';
    case '"':
        return parse_string_literal(ctx, lval);
    case '&':
        if(*++ctx->ptr == 'h' || *ctx->ptr == 'H')
            return parse_hex_literal(ctx, lval);
        return '&';
    case '<':
        switch(*++ctx->ptr) {
        case '>':
            ctx->ptr++;
            return tNEQ;
        case '=':
            ctx->ptr++;
            return tLTEQ;
        case '!':
            if(ctx->is_html && ctx->ptr[1] == '-' && ctx->ptr[2] == '-')
                return comment_line(ctx);
        }
        return '<';
    case '>':
        if(*++ctx->ptr == '=') {
            ctx->ptr++;
            return tGTEQ;
        }
        return '>';
    default:
        FIXME("Unhandled char %c in %s\n", *ctx->ptr, debugstr_w(ctx->ptr));
    }

    return 0;
}
