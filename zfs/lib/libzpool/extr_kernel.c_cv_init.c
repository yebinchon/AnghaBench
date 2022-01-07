
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcondvar_t ;


 int VERIFY0 (int ) ;
 int pthread_cond_init (int *,int *) ;

void
cv_init(kcondvar_t *cv, char *name, int type, void *arg)
{
 VERIFY0(pthread_cond_init(cv, ((void*)0)));
}
