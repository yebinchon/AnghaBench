
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vbsop_t ;
struct TYPE_8__ {int code; } ;
typedef TYPE_2__ compile_ctx_t ;
typedef int WCHAR ;
struct TYPE_7__ {int * str; } ;
struct TYPE_9__ {TYPE_1__ arg1; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * compiler_alloc_string (int ,int const*) ;
 TYPE_5__* instr_ptr (TYPE_2__*,unsigned int) ;
 unsigned int push_instr (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT push_instr_str(compile_ctx_t *ctx, vbsop_t op, const WCHAR *arg)
{
    unsigned instr;
    WCHAR *str;

    str = compiler_alloc_string(ctx->code, arg);
    if(!str)
        return E_OUTOFMEMORY;

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    instr_ptr(ctx, instr)->arg1.str = str;
    return S_OK;
}
