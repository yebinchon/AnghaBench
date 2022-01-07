
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prefix ;


 char* I_RpcAllocate (scalar_t__) ;
 int strcat (int ,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *ncalrpc_pipe_name(const char *endpoint)
{
  static const char prefix[] = "\\\\.\\pipe\\lrpc\\";
  char *pipe_name;



  pipe_name = I_RpcAllocate(sizeof(prefix) + strlen(endpoint));
  strcat(strcpy(pipe_name, prefix), endpoint);
  return pipe_name;
}
