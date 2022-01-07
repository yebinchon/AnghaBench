
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int moduleGIL ;
 int pthread_mutex_unlock (int *) ;

void moduleReleaseGIL(void) {
    pthread_mutex_unlock(&moduleGIL);
}
