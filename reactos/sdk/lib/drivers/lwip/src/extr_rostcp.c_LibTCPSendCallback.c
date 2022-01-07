
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Error; scalar_t__ Information; } ;
struct TYPE_10__ {TYPE_4__ Send; } ;
struct TYPE_7__ {scalar_t__ DataLength; TYPE_1__* Connection; int Data; } ;
struct TYPE_8__ {TYPE_2__ Send; } ;
struct lwip_callback_msg {int Event; TYPE_5__ Output; TYPE_3__ Input; } ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_6__ {scalar_t__ SocketContext; scalar_t__ SendShutdown; } ;
typedef scalar_t__ PTCP_PCB ;


 int ASSERT (struct lwip_callback_msg*) ;
 void* ERR_CLSD ;
 void* ERR_INPROGRESS ;
 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,int ) ;
 int TCP_WRITE_FLAG_COPY ;
 int TCP_WRITE_FLAG_MORE ;
 int tcp_output (scalar_t__) ;
 scalar_t__ tcp_sndbuf (scalar_t__) ;
 scalar_t__ tcp_write (scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static
void
LibTCPSendCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;
    PTCP_PCB pcb = msg->Input.Send.Connection->SocketContext;
    ULONG SendLength;
    UCHAR SendFlags;

    ASSERT(msg);

    if (!msg->Input.Send.Connection->SocketContext)
    {
        msg->Output.Send.Error = ERR_CLSD;
        goto done;
    }

    if (msg->Input.Send.Connection->SendShutdown)
    {
        msg->Output.Send.Error = ERR_CLSD;
        goto done;
    }

    SendFlags = TCP_WRITE_FLAG_COPY;
    SendLength = msg->Input.Send.DataLength;
    if (tcp_sndbuf(pcb) == 0)
    {

        msg->Output.Send.Error = ERR_INPROGRESS;
        goto done;
    }
    else if (tcp_sndbuf(pcb) < SendLength)
    {

        SendLength = tcp_sndbuf(pcb);


        SendFlags |= TCP_WRITE_FLAG_MORE;
    }

    msg->Output.Send.Error = tcp_write(pcb,
                                       msg->Input.Send.Data,
                                       SendLength,
                                       SendFlags);
    if (msg->Output.Send.Error == ERR_OK)
    {

        tcp_output((PTCP_PCB)msg->Input.Send.Connection->SocketContext);
        msg->Output.Send.Information = SendLength;
    }
    else if (msg->Output.Send.Error == ERR_MEM)
    {

        msg->Output.Send.Error = ERR_INPROGRESS;
    }

done:
    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
