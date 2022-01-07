
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_i64 ;
typedef int lsm_file ;
struct TYPE_3__ {int (* xTruncate ) (int *,int ) ;} ;
typedef TYPE_1__ lsm_env ;


 int IOERR_WRAPPER (int ) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static int lsmEnvTruncate(lsm_env *pEnv, lsm_file *pFile, lsm_i64 nByte){
  return IOERR_WRAPPER( pEnv->xTruncate(pFile, nByte) );
}
