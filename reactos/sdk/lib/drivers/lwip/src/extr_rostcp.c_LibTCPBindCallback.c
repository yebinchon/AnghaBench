
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int Port; int IpAddress; TYPE_4__* Connection; } ;
struct TYPE_12__ {TYPE_3__ Bind; } ;
struct TYPE_8__ {int Error; } ;
struct TYPE_9__ {TYPE_1__ Bind; } ;
struct lwip_callback_msg {int Event; TYPE_5__ Input; TYPE_2__ Output; } ;
struct TYPE_13__ {int so_options; } ;
struct TYPE_11__ {TYPE_6__* SocketContext; } ;
typedef TYPE_6__* PTCP_PCB ;


 int ASSERT (struct lwip_callback_msg*) ;
 int ERR_CLSD ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,int ) ;
 int SOF_REUSEADDR ;
 int ntohs (int ) ;
 int tcp_bind (TYPE_6__*,int ,int ) ;

__attribute__((used)) static
void
LibTCPBindCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;
    PTCP_PCB pcb = msg->Input.Bind.Connection->SocketContext;

    ASSERT(msg);

    if (!msg->Input.Bind.Connection->SocketContext)
    {
        msg->Output.Bind.Error = ERR_CLSD;
        goto done;
    }


    pcb->so_options |= SOF_REUSEADDR;

    msg->Output.Bind.Error = tcp_bind(pcb,
                                      msg->Input.Bind.IpAddress,
                                      ntohs(msg->Input.Bind.Port));

done:
    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
