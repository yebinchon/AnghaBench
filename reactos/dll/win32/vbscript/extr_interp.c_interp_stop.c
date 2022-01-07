
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exec_ctx_t ;
typedef int HRESULT ;


 int S_OK ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT interp_stop(exec_ctx_t *ctx)
{
    WARN("\n");


    return S_OK;
}
