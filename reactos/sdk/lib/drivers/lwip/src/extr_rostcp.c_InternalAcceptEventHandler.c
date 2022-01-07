
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int err_t ;
struct TYPE_4__ {scalar_t__ callback_arg; } ;
typedef TYPE_1__* PTCP_PCB ;


 int ERR_CLSD ;
 int ERR_OK ;
 int TCPAcceptEventHandler (void*,TYPE_1__*) ;

__attribute__((used)) static
err_t
InternalAcceptEventHandler(void *arg, PTCP_PCB newpcb, const err_t err)
{

    if (!arg)
        return ERR_CLSD;

    TCPAcceptEventHandler(arg, newpcb);


    if (newpcb->callback_arg)
        return ERR_OK;
    else
        return ERR_CLSD;
}
