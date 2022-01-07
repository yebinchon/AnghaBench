
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_mutex ;
typedef int lsm_env ;


 int LSM_MUTEX_GLOBAL ;
 int lsmMutexLeave (int *,int *) ;
 int lsmMutexStatic (int *,int ,int **) ;

__attribute__((used)) static void leaveGlobalMutex(lsm_env *pEnv){
  lsm_mutex *p;
  lsmMutexStatic(pEnv, LSM_MUTEX_GLOBAL, &p);
  lsmMutexLeave(pEnv, p);
}
