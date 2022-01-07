
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xUnlink ) (TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ lsm_env ;


 int IOERR_WRAPPER (int ) ;
 int stub1 (TYPE_1__*,char const*) ;

__attribute__((used)) static int lsmEnvUnlink(lsm_env *pEnv, const char *zDel){
  return IOERR_WRAPPER( pEnv->xUnlink(pEnv, zDel) );
}
