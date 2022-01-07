
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nRef; int flags; int pgno; int pCache; } ;
typedef TYPE_1__ PgHdr ;


 int PCACHE_DIRTYLIST_ADD ;
 int PGHDR_CLEAN ;
 int PGHDR_DIRTY ;
 int PGHDR_DONT_WRITE ;
 int assert (int) ;
 int pcacheManageDirtyList (TYPE_1__*,int ) ;
 int pcacheTrace (char*) ;
 int sqlite3PcachePageSanity (TYPE_1__*) ;

void sqlite3PcacheMakeDirty(PgHdr *p){
  assert( p->nRef>0 );
  assert( sqlite3PcachePageSanity(p) );
  if( p->flags & (PGHDR_CLEAN|PGHDR_DONT_WRITE) ){
    p->flags &= ~PGHDR_DONT_WRITE;
    if( p->flags & PGHDR_CLEAN ){
      p->flags ^= (PGHDR_DIRTY|PGHDR_CLEAN);
      pcacheTrace(("%p.DIRTY %d\n",p->pCache,p->pgno));
      assert( (p->flags & (PGHDR_DIRTY|PGHDR_CLEAN))==PGHDR_DIRTY );
      pcacheManageDirtyList(p, PCACHE_DIRTYLIST_ADD);
    }
    assert( sqlite3PcachePageSanity(p) );
  }
}
