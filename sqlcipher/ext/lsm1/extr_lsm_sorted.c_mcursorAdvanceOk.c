
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nData; int pData; } ;
struct TYPE_9__ {int flags; int eType; TYPE_1__ key; int * aTree; } ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_IGNORE_DELETE ;
 int LSM_OK ;
 int LSM_SYSTEMKEY ;
 int assert (int) ;
 scalar_t__ mcursorLocationOk (TYPE_2__*,int ) ;
 int multiCursorCacheKey (TYPE_2__*,int*) ;
 int multiCursorGetKey (TYPE_2__*,int ,int*,void**,int*) ;
 int sortedDbKeyCompare (TYPE_2__*,int,void*,int,int,int ,int ) ;

__attribute__((used)) static int mcursorAdvanceOk(
  MultiCursor *pCsr,
  int bReverse,
  int *pRc
){
  void *pNew;
  int nNew;
  int eNewType;

  if( *pRc ) return 1;





  multiCursorGetKey(pCsr, pCsr->aTree[1], &eNewType, &pNew, &nNew);
  if( pNew ){
    int typemask = (pCsr->flags & CURSOR_IGNORE_DELETE) ? ~(0) : LSM_SYSTEMKEY;
    int res = sortedDbKeyCompare(pCsr,
      eNewType & typemask, pNew, nNew,
      pCsr->eType & typemask, pCsr->key.pData, pCsr->key.nData
    );

    if( (bReverse==0 && res<=0) || (bReverse!=0 && res>=0) ){
      return 0;
    }

    multiCursorCacheKey(pCsr, pRc);
    assert( pCsr->eType==eNewType );
    if( *pRc==LSM_OK && 0==mcursorLocationOk(pCsr, 0) ) return 0;
  }
  return 1;
}
