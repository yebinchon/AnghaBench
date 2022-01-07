
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;


 int I_RpcFree (char*) ;
 int is_pipe_listening (char*) ;
 char* ncalrpc_pipe_name (char const*) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncalrpc_np_is_server_listening(const char *endpoint)
{
  char *pipe_name;
  RPC_STATUS status;

  pipe_name = ncalrpc_pipe_name(endpoint);
  status = is_pipe_listening(pipe_name);
  I_RpcFree(pipe_name);
  return status;
}
