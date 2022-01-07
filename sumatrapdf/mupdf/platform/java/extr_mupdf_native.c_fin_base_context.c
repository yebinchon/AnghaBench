
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int DeleteCriticalSection (int *) ;
 int FZ_LOCK_MAX ;
 int * base_context ;
 int fz_drop_context (int *) ;
 int * mutexes ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void fin_base_context(JNIEnv *env)
{
 int i;

 for (i = 0; i < FZ_LOCK_MAX; i++)



  (void)pthread_mutex_destroy(&mutexes[i]);


 fz_drop_context(base_context);
 base_context = ((void*)0);
}
