
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ nRef; int pgno; int pCache; } ;
typedef TYPE_1__ PgHdr ;


 int PCACHE_DIRTYLIST_REMOVE ;
 int PGHDR_CLEAN ;
 int PGHDR_DIRTY ;
 int PGHDR_NEED_SYNC ;
 int PGHDR_WRITEABLE ;
 int assert (int) ;
 int pcacheManageDirtyList (TYPE_1__*,int ) ;
 int pcacheTrace (char*) ;
 int pcacheUnpin (TYPE_1__*) ;
 int sqlite3PcachePageSanity (TYPE_1__*) ;

void sqlite3PcacheMakeClean(PgHdr *p){
  assert( sqlite3PcachePageSanity(p) );
  assert( (p->flags & PGHDR_DIRTY)!=0 );
  assert( (p->flags & PGHDR_CLEAN)==0 );
  pcacheManageDirtyList(p, PCACHE_DIRTYLIST_REMOVE);
  p->flags &= ~(PGHDR_DIRTY|PGHDR_NEED_SYNC|PGHDR_WRITEABLE);
  p->flags |= PGHDR_CLEAN;
  pcacheTrace(("%p.CLEAN %d\n",p->pCache,p->pgno));
  assert( sqlite3PcachePageSanity(p) );
  if( p->nRef==0 ){
    pcacheUnpin(p);
  }
}
