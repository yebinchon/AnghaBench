
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vbsop_t ;
typedef int compile_ctx_t ;
typedef int WCHAR ;
struct TYPE_5__ {scalar_t__ bstr; } ;
struct TYPE_4__ {unsigned int uint; } ;
struct TYPE_6__ {TYPE_2__ arg2; TYPE_1__ arg1; } ;
typedef int HRESULT ;
typedef scalar_t__ BSTR ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 scalar_t__ alloc_bstr_arg (int *,int const*) ;
 TYPE_3__* instr_ptr (int *,unsigned int) ;
 unsigned int push_instr (int *,int ) ;

__attribute__((used)) static HRESULT push_instr_uint_bstr(compile_ctx_t *ctx, vbsop_t op, unsigned arg1, const WCHAR *arg2)
{
    unsigned instr;
    BSTR bstr;

    bstr = alloc_bstr_arg(ctx, arg2);
    if(!bstr)
        return E_OUTOFMEMORY;

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    instr_ptr(ctx, instr)->arg1.uint = arg1;
    instr_ptr(ctx, instr)->arg2.bstr = bstr;
    return S_OK;
}
