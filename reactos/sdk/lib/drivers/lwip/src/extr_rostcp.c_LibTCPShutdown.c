
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int Error; } ;
struct TYPE_8__ {TYPE_3__ Shutdown; } ;
struct TYPE_5__ {int shut_rx; int shut_tx; int Connection; } ;
struct TYPE_6__ {TYPE_1__ Shutdown; } ;
struct lwip_callback_msg {TYPE_4__ Output; int Event; TYPE_2__ Input; } ;
typedef int err_t ;
typedef int PCONNECTION_ENDPOINT ;


 int ERR_CLSD ;
 int ERR_MEM ;
 struct lwip_callback_msg* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,struct lwip_callback_msg*) ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 int LibTCPShutdownCallback ;
 int MessageLookasideList ;
 int NotificationEvent ;
 scalar_t__ WaitForEventSafely (int *) ;
 int tcpip_callback_with_block (int ,struct lwip_callback_msg*,int) ;

err_t
LibTCPShutdown(PCONNECTION_ENDPOINT Connection, const int shut_rx, const int shut_tx)
{
    struct lwip_callback_msg *msg;
    err_t ret;

    msg = ExAllocateFromNPagedLookasideList(&MessageLookasideList);
    if (msg)
    {
        KeInitializeEvent(&msg->Event, NotificationEvent, FALSE);

        msg->Input.Shutdown.Connection = Connection;
        msg->Input.Shutdown.shut_rx = shut_rx;
        msg->Input.Shutdown.shut_tx = shut_tx;

        tcpip_callback_with_block(LibTCPShutdownCallback, msg, 1);

        if (WaitForEventSafely(&msg->Event))
            ret = msg->Output.Shutdown.Error;
        else
            ret = ERR_CLSD;

        ExFreeToNPagedLookasideList(&MessageLookasideList, msg);

        return ret;
    }

    return ERR_MEM;
}
