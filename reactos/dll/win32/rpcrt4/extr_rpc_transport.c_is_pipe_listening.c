
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;


 int RPC_S_NOT_LISTENING ;
 int RPC_S_OK ;
 scalar_t__ WaitNamedPipeA (char const*,int) ;

__attribute__((used)) static RPC_STATUS is_pipe_listening(const char *pipe_name)
{
  return WaitNamedPipeA(pipe_name, 1) ? RPC_S_OK : RPC_S_NOT_LISTENING;
}
