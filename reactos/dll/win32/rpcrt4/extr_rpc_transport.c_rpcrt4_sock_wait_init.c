
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WSADATA ;
struct TYPE_3__ {void* sock_event; void* cancel_event; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef scalar_t__ BOOL ;


 int CloseHandle (void*) ;
 void* CreateEventW (int *,scalar_t__,scalar_t__,int *) ;
 int ERR (char*) ;
 scalar_t__ FALSE ;
 int MAKEWORD (int,int) ;
 scalar_t__ TRUE ;
 int WSAStartup (int ,int *) ;

__attribute__((used)) static BOOL rpcrt4_sock_wait_init(RpcConnection_tcp *tcpc)
{
  static BOOL wsa_inited;
  if (!wsa_inited)
  {
    WSADATA wsadata;
    WSAStartup(MAKEWORD(2, 2), &wsadata);


    wsa_inited = TRUE;
  }
  tcpc->sock_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
  tcpc->cancel_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
  if (!tcpc->sock_event || !tcpc->cancel_event)
  {
    ERR("event creation failed\n");
    if (tcpc->sock_event) CloseHandle(tcpc->sock_event);
    return FALSE;
  }
  return TRUE;
}
