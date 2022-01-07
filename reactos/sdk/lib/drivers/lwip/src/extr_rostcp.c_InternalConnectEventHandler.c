
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_t ;
typedef int PTCP_PCB ;


 int ERR_OK ;
 int TCPConnectEventHandler (void*,int const) ;

__attribute__((used)) static
err_t
InternalConnectEventHandler(void *arg, PTCP_PCB pcb, const err_t err)
{

    if (!arg)
        return ERR_OK;

    TCPConnectEventHandler(arg, err);

    return ERR_OK;
}
