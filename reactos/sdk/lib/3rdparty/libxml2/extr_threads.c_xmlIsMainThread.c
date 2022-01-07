
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetCurrentThreadId () ;
 scalar_t__ find_thread (int *) ;
 int libxml_is_threaded ;
 scalar_t__ mainthread ;
 int once_control ;
 int pthread_equal (scalar_t__,int ) ;
 int pthread_once (int *,int (*) ()) ;
 int pthread_self () ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlInitThreads () ;
 int xmlOnceInit () ;

int
xmlIsMainThread(void)
{
    return (1);

}
