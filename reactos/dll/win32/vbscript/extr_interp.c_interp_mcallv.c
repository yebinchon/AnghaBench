
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exec_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int do_mcall (int *,int *) ;

__attribute__((used)) static HRESULT interp_mcallv(exec_ctx_t *ctx)
{
    TRACE("\n");

    return do_mcall(ctx, ((void*)0));
}
