
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * NewPcb; } ;
struct TYPE_9__ {TYPE_3__ Listen; } ;
struct TYPE_6__ {int Backlog; TYPE_5__* Connection; } ;
struct TYPE_7__ {TYPE_1__ Listen; } ;
struct lwip_callback_msg {int Event; TYPE_4__ Output; TYPE_2__ Input; } ;
struct TYPE_10__ {scalar_t__ SocketContext; } ;
typedef int PTCP_PCB ;


 int ASSERT (struct lwip_callback_msg*) ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int InternalAcceptEventHandler ;
 int KeSetEvent (int *,int ,int ) ;
 int tcp_accept (int *,int ) ;
 int * tcp_listen_with_backlog (int ,int ) ;

__attribute__((used)) static
void
LibTCPListenCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;

    ASSERT(msg);

    if (!msg->Input.Listen.Connection->SocketContext)
    {
        msg->Output.Listen.NewPcb = ((void*)0);
        goto done;
    }

    msg->Output.Listen.NewPcb = tcp_listen_with_backlog((PTCP_PCB)msg->Input.Listen.Connection->SocketContext, msg->Input.Listen.Backlog);

    if (msg->Output.Listen.NewPcb)
    {
        tcp_accept(msg->Output.Listen.NewPcb, InternalAcceptEventHandler);
    }

done:
    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
