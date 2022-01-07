
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
typedef int err_t ;
typedef int PTCP_PCB ;


 int ERR_OK ;
 int TCPSendEventHandler (void*,int const) ;

__attribute__((used)) static
err_t
InternalSendEventHandler(void *arg, PTCP_PCB pcb, const u16_t space)
{

    if (!arg) return ERR_OK;

    TCPSendEventHandler(arg, space);

    return ERR_OK;
}
