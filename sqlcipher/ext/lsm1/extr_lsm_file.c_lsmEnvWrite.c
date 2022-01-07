
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_i64 ;
typedef int lsm_file ;
struct TYPE_3__ {int (* xWrite ) (int *,int ,void*,int) ;} ;
typedef TYPE_1__ lsm_env ;


 int IOERR_WRAPPER (int ) ;
 int stub1 (int *,int ,void*,int) ;

__attribute__((used)) static int lsmEnvWrite(
  lsm_env *pEnv,
  lsm_file *pFile,
  lsm_i64 iOff,
  const void *pWrite,
  int nWrite
){
  return IOERR_WRAPPER( pEnv->xWrite(pFile, iOff, (void *)pWrite, nWrite) );
}
