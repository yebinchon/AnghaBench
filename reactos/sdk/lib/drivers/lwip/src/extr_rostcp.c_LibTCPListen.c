
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_6__ {int * NewPcb; } ;
struct TYPE_7__ {TYPE_2__ Listen; } ;
struct TYPE_8__ {int Backlog; int Connection; } ;
struct TYPE_5__ {TYPE_4__ Listen; } ;
struct lwip_callback_msg {TYPE_3__ Output; int Event; TYPE_1__ Input; } ;
typedef int * PTCP_PCB ;
typedef int PCONNECTION_ENDPOINT ;


 struct lwip_callback_msg* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,struct lwip_callback_msg*) ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 int LibTCPListenCallback ;
 int MessageLookasideList ;
 int NotificationEvent ;
 scalar_t__ WaitForEventSafely (int *) ;
 int tcpip_callback_with_block (int ,struct lwip_callback_msg*,int) ;

PTCP_PCB
LibTCPListen(PCONNECTION_ENDPOINT Connection, const u8_t backlog)
{
    struct lwip_callback_msg *msg;
    PTCP_PCB ret;

    msg = ExAllocateFromNPagedLookasideList(&MessageLookasideList);
    if (msg)
    {
        KeInitializeEvent(&msg->Event, NotificationEvent, FALSE);
        msg->Input.Listen.Connection = Connection;
        msg->Input.Listen.Backlog = backlog;

        tcpip_callback_with_block(LibTCPListenCallback, msg, 1);

        if (WaitForEventSafely(&msg->Event))
            ret = msg->Output.Listen.NewPcb;
        else
            ret = ((void*)0);

        ExFreeToNPagedLookasideList(&MessageLookasideList, msg);

        return ret;
    }

    return ((void*)0);
}
