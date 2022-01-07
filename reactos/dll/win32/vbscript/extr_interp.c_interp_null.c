
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exec_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int stack_push_null (int *) ;

__attribute__((used)) static HRESULT interp_null(exec_ctx_t *ctx)
{
    TRACE("\n");
    return stack_push_null(ctx);
}
