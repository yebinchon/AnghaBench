
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exec_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int do_icall (int *,int *) ;

__attribute__((used)) static HRESULT interp_icallv(exec_ctx_t *ctx)
{
    TRACE("\n");
    return do_icall(ctx, ((void*)0));
}
