
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pbuf {int tot_len; } ;
typedef scalar_t__ const err_t ;
struct TYPE_4__ {scalar_t__ SendShutdown; int * SocketContext; int ReceiveShutdownStatus; int ReceiveShutdown; } ;
typedef int PTCP_PCB ;
typedef TYPE_1__* PCONNECTION_ENDPOINT ;


 int ERR_CLSD ;
 scalar_t__ const ERR_OK ;
 int LibTCPEnqueuePacket (TYPE_1__*,struct pbuf*) ;
 int STATUS_SUCCESS ;
 int TCPFinEventHandler (TYPE_1__*,int ) ;
 int TCPRecvEventHandler (void*) ;
 int TRUE ;
 int pbuf_free (struct pbuf*) ;
 int tcp_arg (int ,int *) ;
 int tcp_recved (int ,int ) ;

__attribute__((used)) static
err_t
InternalRecvEventHandler(void *arg, PTCP_PCB pcb, struct pbuf *p, const err_t err)
{
    PCONNECTION_ENDPOINT Connection = arg;


    if (!arg)
    {
        if (p)
            pbuf_free(p);

        return ERR_OK;
    }

    if (p)
    {
        LibTCPEnqueuePacket(Connection, p);

        tcp_recved(pcb, p->tot_len);

        TCPRecvEventHandler(arg);
    }
    else if (err == ERR_OK)
    {




        Connection->ReceiveShutdown = TRUE;
        Connection->ReceiveShutdownStatus = STATUS_SUCCESS;


        if (Connection->SendShutdown)
        {
            Connection->SocketContext = ((void*)0);
            tcp_arg(pcb, ((void*)0));
        }


        TCPRecvEventHandler(arg);


        if (Connection->SendShutdown)
        {
            TCPFinEventHandler(Connection, ERR_CLSD);
        }
    }

    return ERR_OK;
}
