
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sslLockType ;


 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void sslLockInit(sslLockType *l) {
    pthread_mutex_init(l, ((void*)0));
}
