
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_pcache_page ;
struct TYPE_5__ {int * (* xFetch ) (scalar_t__,int ,int) ;} ;
struct TYPE_7__ {TYPE_1__ pcache2; } ;
struct TYPE_6__ {scalar_t__ pCache; int eCreate; scalar_t__ pDirty; scalar_t__ bPurgeable; } ;
typedef int Pgno ;
typedef TYPE_2__ PCache ;


 int assert (int) ;
 int pcacheTrace (char*) ;
 TYPE_4__ sqlite3GlobalConfig ;
 int * stub1 (scalar_t__,int ,int) ;

sqlite3_pcache_page *sqlite3PcacheFetch(
  PCache *pCache,
  Pgno pgno,
  int createFlag
){
  int eCreate;
  sqlite3_pcache_page *pRes;

  assert( pCache!=0 );
  assert( pCache->pCache!=0 );
  assert( createFlag==3 || createFlag==0 );
  assert( pCache->eCreate==((pCache->bPurgeable && pCache->pDirty) ? 1 : 2) );
  eCreate = createFlag & pCache->eCreate;
  assert( eCreate==0 || eCreate==1 || eCreate==2 );
  assert( createFlag==0 || pCache->eCreate==eCreate );
  assert( createFlag==0 || eCreate==1+(!pCache->bPurgeable||!pCache->pDirty) );
  pRes = sqlite3GlobalConfig.pcache2.xFetch(pCache->pCache, pgno, eCreate);
  pcacheTrace(("%p.FETCH %d%s (result: %p)\n",pCache,pgno,
               createFlag?" create":"",pRes));
  return pRes;
}
