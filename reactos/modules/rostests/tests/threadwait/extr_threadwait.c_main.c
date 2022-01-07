
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int CreateThread (int ,int ,int ,int ,int ,int *) ;
 int INFINITE ;
 int NtClose (int ) ;
 int WaitForSingleObject (int ,int ) ;
 int printf (char*,...) ;
 int threadfunc ;

int main(int ac, char **av)
{
 DWORD id;
 HANDLE Thread;

 Thread = CreateThread(0, 0, threadfunc, 0, 0, &id);
 printf("Main: ThreadId for new thread is %08lx\n", id);
 printf("Main: Waiting on thread...\n");
 WaitForSingleObject(Thread, INFINITE);
 printf("Main: OK, somebody fixed the PsUnblockThread spinlock double-acquire crash\n");
 NtClose(Thread);
 printf("Main: Terminating...\n");
 return 0;
}
