
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* code; char const* ptr; char const* end; void* parse_complete; int hres; int is_html; void* option_explicit; int * class_decls; int * stats_tail; int stats; scalar_t__ last_nl; int last_token; int heap; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 void* FALSE ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int debugstr_w (char const*) ;
 int heap_pool_init (int *) ;
 int parser_parse (TYPE_1__*) ;
 int strcmpiW (char const*,char const*) ;
 int strlenW (char const*) ;
 int tNL ;

HRESULT parse_script(parser_ctx_t *ctx, const WCHAR *code, const WCHAR *delimiter)
{
    static const WCHAR html_delimiterW[] = {'<','/','s','c','r','i','p','t','>',0};

    ctx->code = ctx->ptr = code;
    ctx->end = ctx->code + strlenW(ctx->code);

    heap_pool_init(&ctx->heap);

    ctx->parse_complete = FALSE;
    ctx->hres = S_OK;

    ctx->last_token = tNL;
    ctx->last_nl = 0;
    ctx->stats = ctx->stats_tail = ((void*)0);
    ctx->class_decls = ((void*)0);
    ctx->option_explicit = FALSE;
    ctx->is_html = delimiter && !strcmpiW(delimiter, html_delimiterW);

    parser_parse(ctx);

    if(FAILED(ctx->hres))
        return ctx->hres;
    if(!ctx->parse_complete) {
        FIXME("parser failed around %s\n", debugstr_w(ctx->code+20 > ctx->ptr ? ctx->code : ctx->ptr-20));
        return E_FAIL;
    }

    return S_OK;
}
