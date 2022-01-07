
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;
typedef scalar_t__ RPC_STATUS ;


 scalar_t__ RpcBindingFree (int *) ;
 int TRACE (char*,...) ;

__attribute__((used)) static
void
DsSetupUnbind(
    handle_t hBinding)
{
    RPC_STATUS status;

    TRACE("DsSetupUnbind()\n");

    status = RpcBindingFree(&hBinding);
    if (status)
    {
        TRACE("RpcBindingFree returned 0x%x\n", status);
    }
}
