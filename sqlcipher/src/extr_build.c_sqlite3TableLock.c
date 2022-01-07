
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int iDb; int iTab; int isWriteLock; char const* zLockName; } ;
typedef TYPE_2__ TableLock ;
struct TYPE_14__ {TYPE_1__* aDb; } ;
struct TYPE_13__ {int nTableLock; TYPE_7__* db; TYPE_2__* aTableLock; } ;
struct TYPE_11__ {int pBt; } ;
typedef TYPE_3__ Parse ;


 int assert (int) ;
 int sqlite3BtreeSharable (int ) ;
 TYPE_2__* sqlite3DbReallocOrFree (TYPE_7__*,TYPE_2__*,int) ;
 int sqlite3OomFault (TYPE_7__*) ;
 TYPE_3__* sqlite3ParseToplevel (TYPE_3__*) ;

void sqlite3TableLock(
  Parse *pParse,
  int iDb,
  int iTab,
  u8 isWriteLock,
  const char *zName
){
  Parse *pToplevel = sqlite3ParseToplevel(pParse);
  int i;
  int nBytes;
  TableLock *p;
  assert( iDb>=0 );

  if( iDb==1 ) return;
  if( !sqlite3BtreeSharable(pParse->db->aDb[iDb].pBt) ) return;
  for(i=0; i<pToplevel->nTableLock; i++){
    p = &pToplevel->aTableLock[i];
    if( p->iDb==iDb && p->iTab==iTab ){
      p->isWriteLock = (p->isWriteLock || isWriteLock);
      return;
    }
  }

  nBytes = sizeof(TableLock) * (pToplevel->nTableLock+1);
  pToplevel->aTableLock =
      sqlite3DbReallocOrFree(pToplevel->db, pToplevel->aTableLock, nBytes);
  if( pToplevel->aTableLock ){
    p = &pToplevel->aTableLock[pToplevel->nTableLock++];
    p->iDb = iDb;
    p->iTab = iTab;
    p->isWriteLock = isWriteLock;
    p->zLockName = zName;
  }else{
    pToplevel->nTableLock = 0;
    sqlite3OomFault(pToplevel->db);
  }
}
