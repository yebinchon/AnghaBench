
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
struct TYPE_5__ {struct tcp_pcb* NewPcb; } ;
struct TYPE_6__ {TYPE_1__ Socket; } ;
struct TYPE_7__ {void* Arg; } ;
struct TYPE_8__ {TYPE_3__ Socket; } ;
struct lwip_callback_msg {TYPE_2__ Output; int Event; TYPE_4__ Input; } ;


 struct lwip_callback_msg* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,struct lwip_callback_msg*) ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 int LibTCPSocketCallback ;
 int MessageLookasideList ;
 int NotificationEvent ;
 scalar_t__ WaitForEventSafely (int *) ;
 int tcpip_callback_with_block (int ,struct lwip_callback_msg*,int) ;

struct tcp_pcb *
LibTCPSocket(void *arg)
{
    struct lwip_callback_msg *msg = ExAllocateFromNPagedLookasideList(&MessageLookasideList);
    struct tcp_pcb *ret;

    if (msg)
    {
        KeInitializeEvent(&msg->Event, NotificationEvent, FALSE);
        msg->Input.Socket.Arg = arg;

        tcpip_callback_with_block(LibTCPSocketCallback, msg, 1);

        if (WaitForEventSafely(&msg->Event))
            ret = msg->Output.Socket.NewPcb;
        else
            ret = ((void*)0);

        ExFreeToNPagedLookasideList(&MessageLookasideList, msg);

        return ret;
    }

    return ((void*)0);
}
