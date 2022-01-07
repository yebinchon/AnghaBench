
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* QOS; } ;
struct TYPE_8__ {scalar_t__ pipe; } ;
struct TYPE_7__ {TYPE_1__* qos; } ;
struct TYPE_6__ {int ImpersonationType; scalar_t__ IdentityTracking; } ;
typedef TYPE_3__ RpcConnection_np ;
typedef TYPE_4__ RpcConnection ;
typedef int RPC_STATUS ;
typedef scalar_t__ LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ CreateFileA (scalar_t__,int,int ,int *,int ,scalar_t__,int ) ;
 scalar_t__ ERROR_PIPE_BUSY ;
 scalar_t__ FILE_FLAG_OVERLAPPED ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NMPWAIT_USE_DEFAULT_WAIT ;
 int NMPWAIT_WAIT_FOREVER ;
 int OPEN_EXISTING ;
 scalar_t__ PIPE_READMODE_MESSAGE ;





 scalar_t__ RPC_C_QOS_IDENTITY_DYNAMIC ;
 int RPC_S_OK ;
 int RPC_S_SERVER_TOO_BUSY ;
 int RPC_S_SERVER_UNAVAILABLE ;
 scalar_t__ SECURITY_ANONYMOUS ;
 scalar_t__ SECURITY_CONTEXT_TRACKING ;
 scalar_t__ SECURITY_DELEGATION ;
 scalar_t__ SECURITY_IDENTIFICATION ;
 scalar_t__ SECURITY_IMPERSONATION ;
 scalar_t__ SECURITY_SQOS_PRESENT ;
 int SetNamedPipeHandleState (scalar_t__,scalar_t__*,int *,int *) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*,scalar_t__) ;
 scalar_t__ WaitNamedPipeA (scalar_t__,int ) ;

__attribute__((used)) static RPC_STATUS rpcrt4_conn_open_pipe(RpcConnection *Connection, LPCSTR pname, BOOL wait)
{
  RpcConnection_np *npc = (RpcConnection_np *) Connection;
  HANDLE pipe;
  DWORD err, dwMode;

  TRACE("connecting to %s\n", pname);

  while (TRUE) {
    DWORD dwFlags = 0;
    if (Connection->QOS)
    {
        dwFlags = SECURITY_SQOS_PRESENT;
        switch (Connection->QOS->qos->ImpersonationType)
        {
            case 131:

                break;
            case 132:
                dwFlags |= SECURITY_ANONYMOUS;
                break;
            case 129:
                dwFlags |= SECURITY_IDENTIFICATION;
                break;
            case 128:
                dwFlags |= SECURITY_IMPERSONATION;
                break;
            case 130:
                dwFlags |= SECURITY_DELEGATION;
                break;
        }
        if (Connection->QOS->qos->IdentityTracking == RPC_C_QOS_IDENTITY_DYNAMIC)
            dwFlags |= SECURITY_CONTEXT_TRACKING;
    }
    pipe = CreateFileA(pname, GENERIC_READ|GENERIC_WRITE, 0, ((void*)0),
                       OPEN_EXISTING, dwFlags | FILE_FLAG_OVERLAPPED, 0);
    if (pipe != INVALID_HANDLE_VALUE) break;
    err = GetLastError();
    if (err == ERROR_PIPE_BUSY) {
      if (WaitNamedPipeA(pname, NMPWAIT_USE_DEFAULT_WAIT)) {
        TRACE("retrying busy server\n");
        continue;
      }
      TRACE("connection failed, error=%x\n", err);
      return RPC_S_SERVER_TOO_BUSY;
    }
    if (!wait || !WaitNamedPipeA(pname, NMPWAIT_WAIT_FOREVER)) {
      err = GetLastError();
      WARN("connection failed, error=%x\n", err);
      return RPC_S_SERVER_UNAVAILABLE;
    }
  }



  dwMode = PIPE_READMODE_MESSAGE;
  SetNamedPipeHandleState(pipe, &dwMode, ((void*)0), ((void*)0));
  npc->pipe = pipe;

  return RPC_S_OK;
}
