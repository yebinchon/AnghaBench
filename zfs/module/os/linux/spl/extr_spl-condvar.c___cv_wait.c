
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmutex_t ;
typedef int kcondvar_t ;


 int TASK_UNINTERRUPTIBLE ;
 int cv_wait_common (int *,int *,int ,int ) ;

void
__cv_wait(kcondvar_t *cvp, kmutex_t *mp)
{
 cv_wait_common(cvp, mp, TASK_UNINTERRUPTIBLE, 0);
}
