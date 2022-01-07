
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* xRekey ) (int ,int ,int ,int ) ;} ;
struct TYPE_11__ {TYPE_1__ pcache2; } ;
struct TYPE_10__ {int pCache; } ;
struct TYPE_9__ {scalar_t__ nRef; int flags; int pgno; int pPage; TYPE_3__* pCache; } ;
typedef int Pgno ;
typedef TYPE_2__ PgHdr ;
typedef TYPE_3__ PCache ;


 int PCACHE_DIRTYLIST_FRONT ;
 int PGHDR_DIRTY ;
 int PGHDR_NEED_SYNC ;
 int assert (int) ;
 int pcacheManageDirtyList (TYPE_2__*,int ) ;
 int pcacheTrace (char*) ;
 TYPE_6__ sqlite3GlobalConfig ;
 int sqlite3PcachePageSanity (TYPE_2__*) ;
 int stub1 (int ,int ,int ,int ) ;

void sqlite3PcacheMove(PgHdr *p, Pgno newPgno){
  PCache *pCache = p->pCache;
  assert( p->nRef>0 );
  assert( newPgno>0 );
  assert( sqlite3PcachePageSanity(p) );
  pcacheTrace(("%p.MOVE %d -> %d\n",pCache,p->pgno,newPgno));
  sqlite3GlobalConfig.pcache2.xRekey(pCache->pCache, p->pPage, p->pgno,newPgno);
  p->pgno = newPgno;
  if( (p->flags&PGHDR_DIRTY) && (p->flags&PGHDR_NEED_SYNC) ){
    pcacheManageDirtyList(p, PCACHE_DIRTYLIST_FRONT);
  }
}
