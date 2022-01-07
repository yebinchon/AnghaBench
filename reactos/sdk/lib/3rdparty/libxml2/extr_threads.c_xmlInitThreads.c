
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeCriticalSection (int *) ;
 int cleanup_helpers_cs ;
 int libxml_is_threaded ;
 int * pthread_cond_destroy ;
 int * pthread_cond_init ;
 int * pthread_cond_signal ;
 int * pthread_cond_wait ;
 int * pthread_equal ;
 int * pthread_getspecific ;
 int * pthread_key_create ;
 int * pthread_key_delete ;
 int * pthread_mutex_destroy ;
 int * pthread_mutex_init ;
 int * pthread_mutex_lock ;
 int * pthread_mutex_unlock ;
 int * pthread_once ;
 int * pthread_self ;
 int * pthread_setspecific ;

void
xmlInitThreads(void)
{
}
