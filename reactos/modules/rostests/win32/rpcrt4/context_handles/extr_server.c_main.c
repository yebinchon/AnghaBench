
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;


 int FALSE ;
 int RpcServerListen (int,int,int ) ;
 int RpcServerRegisterIf (int ,int *,int *) ;
 int RpcServerUseProtseqEp (char*,int,char*,int *) ;
 int exit (int) ;
 int hello_v1_0_s_ifspec ;
 int printf (char*,int) ;
 int scanf (char*,int*) ;

void main()
{
 RPC_STATUS status;
 unsigned int cMinCalls = 1;
 unsigned int cMaxCalls = 20;
 int i;

 status = RpcServerUseProtseqEp("ncacn_np", 20, "\\pipe\\hello", ((void*)0));

 if (status)
 {
  printf("RpcServerUseProtseqEp %x\n", status);
  exit(status);
 }

 status = RpcServerRegisterIf(hello_v1_0_s_ifspec, ((void*)0), ((void*)0));

 if (status)
 {
  printf("RpcServerRegisterIf %x\n", status);
 exit(status);
 }

 status = RpcServerListen(1, 20, FALSE);

 if (status)
 {
  printf("RpcServerListen %x", status);
  exit(status);
 }

 scanf("%d", &i);
}
