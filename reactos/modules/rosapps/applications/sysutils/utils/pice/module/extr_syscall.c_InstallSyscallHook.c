
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;

void InstallSyscallHook(void)
{
 ULONG LocalSyscallHandler;

 ENTER_FUNC();
    LEAVE_FUNC();
}
