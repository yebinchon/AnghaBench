
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16_t ;
struct TYPE_7__ {int Error; } ;
struct TYPE_8__ {TYPE_3__ Connect; } ;
struct TYPE_5__ {int Port; struct ip_addr* IpAddress; int Connection; } ;
struct TYPE_6__ {TYPE_1__ Connect; } ;
struct lwip_callback_msg {TYPE_4__ Output; int Event; TYPE_2__ Input; } ;
struct ip_addr {int dummy; } ;
typedef int err_t ;
typedef int PCONNECTION_ENDPOINT ;


 int ERR_CLSD ;
 int ERR_MEM ;
 struct lwip_callback_msg* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,struct lwip_callback_msg*) ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 int LibTCPConnectCallback ;
 int MessageLookasideList ;
 int NotificationEvent ;
 scalar_t__ WaitForEventSafely (int *) ;
 int tcpip_callback_with_block (int ,struct lwip_callback_msg*,int) ;

err_t
LibTCPConnect(PCONNECTION_ENDPOINT Connection, struct ip_addr *const ipaddr, const u16_t port)
{
    struct lwip_callback_msg *msg;
    err_t ret;

    msg = ExAllocateFromNPagedLookasideList(&MessageLookasideList);
    if (msg)
    {
        KeInitializeEvent(&msg->Event, NotificationEvent, FALSE);
        msg->Input.Connect.Connection = Connection;
        msg->Input.Connect.IpAddress = ipaddr;
        msg->Input.Connect.Port = port;

        tcpip_callback_with_block(LibTCPConnectCallback, msg, 1);

        if (WaitForEventSafely(&msg->Event))
        {
            ret = msg->Output.Connect.Error;
        }
        else
            ret = ERR_CLSD;

        ExFreeToNPagedLookasideList(&MessageLookasideList, msg);

        return ret;
    }

    return ERR_MEM;
}
