#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* ptr; char* end; scalar_t__ last_token; int /*<<< orphan*/  is_html; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 int FUNC5 (TYPE_1__*,void*) ; 
 int FUNC6 (TYPE_1__*,void*) ; 
 int FUNC7 (TYPE_1__*,void*) ; 
 int FUNC8 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int tEMPTYBRACKETS ; 
 int tEOF ; 
 int tGTEQ ; 
 int tLTEQ ; 
 int tNEQ ; 
 scalar_t__ tNL ; 
 int tREM ; 

__attribute__((used)) static int FUNC10(void *lval, parser_ctx_t *ctx)
{
    WCHAR c;

    FUNC9(ctx);
    if(ctx->ptr == ctx->end)
        return ctx->last_token == tNL ? tEOF : tNL;

    c = *ctx->ptr;

    if('0' <= c && c <= '9')
        return FUNC7(ctx, lval);

    if(FUNC4(c)) {
        int ret = FUNC1(ctx);
        if(!ret)
            return FUNC6(ctx, lval);
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
        return FUNC2(ctx);
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
            return FUNC2(ctx);
        ctx->ptr++;
        return '-';
    case '(':
        /* NOTE:
         * We resolve empty brackets in lexer instead of parser to avoid complex conflicts
         * in call statement special case |f()| without 'call' keyword
         */
        ctx->ptr++;
        FUNC9(ctx);
        if(*ctx->ptr == ')') {
            ctx->ptr++;
            return tEMPTYBRACKETS;
        }
        return '(';
    case '"':
        return FUNC8(ctx, lval);
    case '&':
        if(*++ctx->ptr == 'h' || *ctx->ptr == 'H')
            return FUNC5(ctx, lval);
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
                return FUNC2(ctx);
        }
        return '<';
    case '>':
        if(*++ctx->ptr == '=') {
            ctx->ptr++;
            return tGTEQ;
        }
        return '>';
    default:
        FUNC0("Unhandled char %c in %s\n", *ctx->ptr, FUNC3(ctx->ptr));
    }

    return 0;
}