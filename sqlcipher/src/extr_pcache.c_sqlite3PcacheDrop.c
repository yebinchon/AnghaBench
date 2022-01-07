
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* xUnpin ) (int ,int ,int) ;} ;
struct TYPE_11__ {TYPE_1__ pcache2; } ;
struct TYPE_10__ {int nRef; int flags; int pPage; TYPE_2__* pCache; } ;
struct TYPE_9__ {int pCache; int nRefSum; } ;
typedef TYPE_3__ PgHdr ;


 int PCACHE_DIRTYLIST_REMOVE ;
 int PGHDR_DIRTY ;
 int assert (int) ;
 int pcacheManageDirtyList (TYPE_3__*,int ) ;
 TYPE_6__ sqlite3GlobalConfig ;
 int sqlite3PcachePageSanity (TYPE_3__*) ;
 int stub1 (int ,int ,int) ;

void sqlite3PcacheDrop(PgHdr *p){
  assert( p->nRef==1 );
  assert( sqlite3PcachePageSanity(p) );
  if( p->flags&PGHDR_DIRTY ){
    pcacheManageDirtyList(p, PCACHE_DIRTYLIST_REMOVE);
  }
  p->pCache->nRefSum--;
  sqlite3GlobalConfig.pcache2.xUnpin(p->pCache->pCache, p->pPage, 1);
}
