
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int lsm_env ;
struct TYPE_10__ {TYPE_1__* pWorker; TYPE_4__* pFreelist; scalar_t__ bUseFreelist; int * pEnv; } ;
typedef TYPE_2__ lsm_db ;
typedef int i64 ;
struct TYPE_12__ {int nAlloc; int nEntry; TYPE_3__* aEntry; } ;
struct TYPE_11__ {scalar_t__ iBlk; int iId; } ;
struct TYPE_9__ {TYPE_4__ freelist; } ;
typedef TYPE_3__ FreelistEntry ;
typedef TYPE_4__ Freelist ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int) ;
 scalar_t__ lsmRealloc (int *,TYPE_3__*,int) ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;

int freelistAppend(lsm_db *db, u32 iBlk, i64 iId){
  lsm_env *pEnv = db->pEnv;
  Freelist *p;
  int i;

  assert( iId==-1 || iId>=0 );
  p = db->bUseFreelist ? db->pFreelist : &db->pWorker->freelist;


  assert( p->nAlloc>=p->nEntry );
  if( p->nAlloc==p->nEntry ){
    int nNew;
    int nByte;
    FreelistEntry *aNew;

    nNew = (p->nAlloc==0 ? 4 : p->nAlloc*2);
    nByte = sizeof(FreelistEntry) * nNew;
    aNew = (FreelistEntry *)lsmRealloc(pEnv, p->aEntry, nByte);
    if( !aNew ) return LSM_NOMEM_BKPT;
    p->nAlloc = nNew;
    p->aEntry = aNew;
  }

  for(i=0; i<p->nEntry; i++){
    assert( i==0 || p->aEntry[i].iBlk > p->aEntry[i-1].iBlk );
    if( p->aEntry[i].iBlk>=iBlk ) break;
  }

  if( i<p->nEntry && p->aEntry[i].iBlk==iBlk ){

    p->aEntry[i].iId = iId;
  }else{

    int nByte = sizeof(FreelistEntry)*(p->nEntry-i);
    memmove(&p->aEntry[i+1], &p->aEntry[i], nByte);
    p->aEntry[i].iBlk = iBlk;
    p->aEntry[i].iId = iId;
    p->nEntry++;
  }

  return LSM_OK;
}
