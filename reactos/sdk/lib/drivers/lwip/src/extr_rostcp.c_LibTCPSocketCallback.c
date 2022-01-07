
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ NewPcb; } ;
struct TYPE_7__ {TYPE_2__ Socket; } ;
struct TYPE_8__ {int Arg; } ;
struct TYPE_5__ {TYPE_4__ Socket; } ;
struct lwip_callback_msg {int Event; TYPE_3__ Output; TYPE_1__ Input; } ;


 int ASSERT (struct lwip_callback_msg*) ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int InternalErrorEventHandler ;
 int KeSetEvent (int *,int ,int ) ;
 int tcp_arg (scalar_t__,int ) ;
 int tcp_err (scalar_t__,int ) ;
 scalar_t__ tcp_new () ;

__attribute__((used)) static
void
LibTCPSocketCallback(void *arg)
{
    struct lwip_callback_msg *msg = arg;

    ASSERT(msg);

    msg->Output.Socket.NewPcb = tcp_new();

    if (msg->Output.Socket.NewPcb)
    {
        tcp_arg(msg->Output.Socket.NewPcb, msg->Input.Socket.Arg);
        tcp_err(msg->Output.Socket.NewPcb, InternalErrorEventHandler);
    }

    KeSetEvent(&msg->Event, IO_NO_INCREMENT, FALSE);
}
