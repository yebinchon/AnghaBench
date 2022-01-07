
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Error; } ;
struct TYPE_10__ {TYPE_4__ Connect; } ;
struct TYPE_7__ {int Port; int IpAddress; TYPE_1__* Connection; } ;
struct TYPE_8__ {TYPE_2__ Connect; } ;
struct lwip_callback_msg {int Event; TYPE_5__ Output; TYPE_3__ Input; } ;
typedef scalar_t__ err_t ;
struct TYPE_6__ {scalar_t__ SocketContext; } ;
typedef int PTCP_PCB ;


 int ASSERT (void*) ;
 scalar_t__ ERR_CLSD ;
 scalar_t__ ERR_INPROGRESS ;
 scalar_t__ ERR_OK ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int InternalConnectEventHandler ;
 int InternalRecvEventHandler ;
 int InternalSendEventHandler ;
 int KeSetEvent (int *,int ,int ) ;
 int ntohs (int ) ;
 scalar_t__ tcp_connect (int ,int ,int ,int ) ;
 int tcp_recv (int ,int ) ;
 int tcp_sent (int ,int ) ;

__attribute__((used)) static
void
LibTCPConnectCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;
    err_t Error;

    ASSERT(arg);

    if (!msg->Input.Connect.Connection->SocketContext)
    {
        msg->Output.Connect.Error = ERR_CLSD;
        goto done;
    }

    tcp_recv((PTCP_PCB)msg->Input.Connect.Connection->SocketContext, InternalRecvEventHandler);
    tcp_sent((PTCP_PCB)msg->Input.Connect.Connection->SocketContext, InternalSendEventHandler);

    Error = tcp_connect((PTCP_PCB)msg->Input.Connect.Connection->SocketContext,
                        msg->Input.Connect.IpAddress, ntohs(msg->Input.Connect.Port),
                        InternalConnectEventHandler);

    msg->Output.Connect.Error = Error == ERR_OK ? ERR_INPROGRESS : Error;

done:
    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
