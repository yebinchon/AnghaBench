
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancel_event; int sock_event; int sock; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int FD_CLOSE ;
 int FD_READ ;
 int GetLastError () ;
 int INFINITE ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;

 scalar_t__ WSAEventSelect (int ,int ,int) ;
 int WSAGetLastError () ;
 int WaitForMultipleObjects (int,int *,int ,int ) ;

__attribute__((used)) static BOOL rpcrt4_sock_wait_for_recv(RpcConnection_tcp *tcpc)
{
  HANDLE wait_handles[2];
  DWORD res;
  if (WSAEventSelect(tcpc->sock, tcpc->sock_event, FD_READ | FD_CLOSE) == SOCKET_ERROR)
  {
    ERR("WSAEventSelect() failed with error %d\n", WSAGetLastError());
    return FALSE;
  }
  wait_handles[0] = tcpc->sock_event;
  wait_handles[1] = tcpc->cancel_event;
  res = WaitForMultipleObjects(2, wait_handles, FALSE, INFINITE);
  switch (res)
  {
  case 128:
    return TRUE;
  case 128 + 1:
    return FALSE;
  default:
    ERR("WaitForMultipleObjects() failed with error %d\n", GetLastError());
    return FALSE;
  }
}
