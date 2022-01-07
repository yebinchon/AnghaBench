
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CoReleaseServerProcess () ;
 int InterlockedDecrement (int *) ;
 int SetEvent (int ) ;
 int cLocks ;
 int heventShutdown ;

__attribute__((used)) static void UnlockModuleOOP(void)
{
    InterlockedDecrement(&cLocks);
    if (!CoReleaseServerProcess())
        SetEvent(heventShutdown);
}
