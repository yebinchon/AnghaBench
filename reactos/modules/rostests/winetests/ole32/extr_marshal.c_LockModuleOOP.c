
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CoAddRefServerProcess () ;
 int InterlockedIncrement (int *) ;
 int cLocks ;

__attribute__((used)) static void LockModuleOOP(void)
{
    InterlockedIncrement(&cLocks);
    CoAddRefServerProcess();
}
