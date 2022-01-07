
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 int LSM_IOERR_BKPT ;
 int LSM_OK ;
 int unlink (char const*) ;

__attribute__((used)) static int lsmPosixOsUnlink(lsm_env *pEnv, const char *zFile){
  int prc = unlink(zFile);
  return prc ? LSM_IOERR_BKPT : LSM_OK;
}
