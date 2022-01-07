
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* Connection; scalar_t__ Callback; } ;
struct TYPE_10__ {TYPE_3__ Close; } ;
struct TYPE_7__ {void* Error; } ;
struct TYPE_8__ {TYPE_1__ Close; } ;
struct lwip_callback_msg {int Event; TYPE_4__ Input; TYPE_2__ Output; } ;
struct TYPE_11__ {scalar_t__ Closing; int * SocketContext; } ;
typedef int * PTCP_PCB ;


 int ERR_CLSD ;
 void* ERR_OK ;
 scalar_t__ FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,scalar_t__) ;
 int LibTCPEmptyQueue (TYPE_5__*) ;
 int TCPFinEventHandler (TYPE_5__*,int ) ;
 scalar_t__ TRUE ;
 int tcp_arg (int *,int *) ;
 void* tcp_close (int *) ;

__attribute__((used)) static
void
LibTCPCloseCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;
    PTCP_PCB pcb = msg->Input.Close.Connection->SocketContext;


    LibTCPEmptyQueue(msg->Input.Close.Connection);


    if (msg->Input.Close.Connection->Closing)
    {
        msg->Output.Close.Error = ERR_OK;
        goto done;
    }


    if (msg->Input.Close.Callback)
        msg->Input.Close.Connection->Closing = TRUE;


    if (!msg->Input.Close.Connection->SocketContext)
    {
        msg->Output.Close.Error = ERR_OK;
        goto done;
    }


    msg->Input.Close.Connection->SocketContext = ((void*)0);
    tcp_arg(pcb, ((void*)0));



    msg->Output.Close.Error = tcp_close(pcb);

    if (msg->Output.Close.Error)
    {

        msg->Input.Close.Connection->SocketContext = pcb;
        msg->Input.Close.Connection->Closing = FALSE;
    }
    else if (msg->Input.Close.Callback)
    {
        TCPFinEventHandler(msg->Input.Close.Connection, ERR_CLSD);
    }

done:
    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
