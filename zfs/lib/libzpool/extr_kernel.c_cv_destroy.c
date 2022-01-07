
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kcondvar_t ;


 int VERIFY0 (int ) ;
 int pthread_cond_destroy (int *) ;

void
cv_destroy(kcondvar_t *cv)
{
 VERIFY0(pthread_cond_destroy(cv));
}
