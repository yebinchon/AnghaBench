
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite4_env ;
struct TYPE_5__ {scalar_t__ pVfsCtx; } ;
typedef TYPE_1__ bt_env ;
struct TYPE_7__ {int (* xFullpath ) (int *,TYPE_3__*,char const*,char**) ;} ;
struct TYPE_6__ {TYPE_3__* pVfs; scalar_t__ bCrash; } ;
typedef TYPE_2__ BtDb ;


 int SQLITE4_IOERR ;
 int stub1 (int *,TYPE_3__*,char const*,char**) ;

__attribute__((used)) static int btVfsFullpath(
  sqlite4_env *pEnv,
  bt_env *pVfs,
  const char *z,
  char **pzOut
){
  BtDb *pBt = (BtDb*)pVfs->pVfsCtx;
  if( pBt->bCrash ) return SQLITE4_IOERR;
  return pBt->pVfs->xFullpath(pEnv, pBt->pVfs, z, pzOut);
}
