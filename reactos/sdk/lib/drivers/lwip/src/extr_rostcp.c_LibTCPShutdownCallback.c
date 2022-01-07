
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* Connection; scalar_t__ shut_tx; scalar_t__ shut_rx; } ;
struct TYPE_9__ {TYPE_3__ Shutdown; } ;
struct TYPE_6__ {void* Error; } ;
struct TYPE_7__ {TYPE_1__ Shutdown; } ;
struct lwip_callback_msg {int Event; TYPE_4__ Input; TYPE_2__ Output; } ;
struct TYPE_10__ {int * SocketContext; void* SendShutdown; void* ReceiveShutdown; int ReceiveShutdownStatus; } ;
typedef int * PTCP_PCB ;


 void* ERR_CLSD ;
 void* FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,void*) ;
 int STATUS_FILE_CLOSED ;
 int TCPFinEventHandler (TYPE_5__*,void*) ;
 void* TRUE ;
 int tcp_arg (int *,int *) ;
 void* tcp_shutdown (int *,void*,void*) ;

__attribute__((used)) static
void
LibTCPShutdownCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;
    PTCP_PCB pcb = msg->Input.Shutdown.Connection->SocketContext;

    if (!msg->Input.Shutdown.Connection->SocketContext)
    {
        msg->Output.Shutdown.Error = ERR_CLSD;
        goto done;
    }







    if (msg->Input.Shutdown.shut_rx) {
        msg->Output.Shutdown.Error = tcp_shutdown(pcb, TRUE, FALSE);
    }
    if (msg->Input.Shutdown.shut_tx) {
        msg->Output.Shutdown.Error = tcp_shutdown(pcb, FALSE, TRUE);
    }

    if (!msg->Output.Shutdown.Error)
    {
        if (msg->Input.Shutdown.shut_rx)
        {
            msg->Input.Shutdown.Connection->ReceiveShutdown = TRUE;
            msg->Input.Shutdown.Connection->ReceiveShutdownStatus = STATUS_FILE_CLOSED;
        }

        if (msg->Input.Shutdown.shut_tx)
            msg->Input.Shutdown.Connection->SendShutdown = TRUE;

        if (msg->Input.Shutdown.Connection->ReceiveShutdown &&
            msg->Input.Shutdown.Connection->SendShutdown)
        {

            msg->Input.Shutdown.Connection->SocketContext = ((void*)0);
            tcp_arg(pcb, ((void*)0));
            TCPFinEventHandler(msg->Input.Shutdown.Connection, ERR_CLSD);
        }
    }

done:
    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
