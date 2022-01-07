
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sock_event; int sock; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int FD_CLOSE ;
 int FD_WRITE ;
 int GetLastError () ;
 int INFINITE ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;

 scalar_t__ WSAEventSelect (int ,int ,int) ;
 int WSAGetLastError () ;
 int WaitForSingleObject (int ,int ) ;

__attribute__((used)) static BOOL rpcrt4_sock_wait_for_send(RpcConnection_tcp *tcpc)
{
  DWORD res;
  if (WSAEventSelect(tcpc->sock, tcpc->sock_event, FD_WRITE | FD_CLOSE) == SOCKET_ERROR)
  {
    ERR("WSAEventSelect() failed with error %d\n", WSAGetLastError());
    return FALSE;
  }
  res = WaitForSingleObject(tcpc->sock_event, INFINITE);
  switch (res)
  {
  case 128:
    return TRUE;
  default:
    ERR("WaitForMultipleObjects() failed with error %d\n", GetLastError());
    return FALSE;
  }
}
