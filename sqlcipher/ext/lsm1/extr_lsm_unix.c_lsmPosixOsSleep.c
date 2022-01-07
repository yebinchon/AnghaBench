
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 int LSM_IOERR ;
 int LSM_OK ;
 scalar_t__ usleep (int) ;

__attribute__((used)) static int lsmPosixOsSleep(lsm_env *pEnv, int us){




  usleep(us);
  return LSM_OK;
}
