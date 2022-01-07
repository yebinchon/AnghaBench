
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
typedef int TreeCursor ;
struct TYPE_5__ {int val; int key; int eType; int flags; TYPE_1__* pDb; } ;
struct TYPE_4__ {int * pEnv; } ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_SEEK_EQ ;
 int LSM_END_DELETE ;
 int LSM_INSERT ;
 int LSM_OK ;
 int LSM_POINT_DELETE ;


 int LSM_START_DELETE ;
 int assert (int ) ;
 int lsmTreeCursorFlags (int *) ;
 int lsmTreeCursorKey (int *,int *,void**,int*) ;
 int lsmTreeCursorNext (int *) ;
 int lsmTreeCursorPrev (int *) ;
 int lsmTreeCursorReset (int *) ;
 int lsmTreeCursorSeek (int *,void*,int,int*) ;
 int lsmTreeCursorValid (int *) ;
 int lsmTreeCursorValue (int *,void**,int*) ;
 int sortedBlobSet (int *,int *,void*,int) ;

__attribute__((used)) static int treeCursorSeek(
  MultiCursor *pCsr,
  TreeCursor *pTreeCsr,
  void *pKey, int nKey,
  int eSeek,
  int *pbStop
){
  int rc = LSM_OK;
  if( pTreeCsr ){
    int res = 0;
    lsmTreeCursorSeek(pTreeCsr, pKey, nKey, &res);
    switch( eSeek ){
      case 129: {
        int eType = lsmTreeCursorFlags(pTreeCsr);
        if( (res<0 && (eType & LSM_START_DELETE))
         || (res>0 && (eType & LSM_END_DELETE))
         || (res==0 && (eType & LSM_POINT_DELETE))
        ){
          *pbStop = 1;
        }else if( res==0 && (eType & LSM_INSERT) ){
          lsm_env *pEnv = pCsr->pDb->pEnv;
          void *p; int n;
          *pbStop = 1;
          pCsr->flags |= CURSOR_SEEK_EQ;
          rc = lsmTreeCursorKey(pTreeCsr, &pCsr->eType, &p, &n);
          if( rc==LSM_OK ) rc = sortedBlobSet(pEnv, &pCsr->key, p, n);
          if( rc==LSM_OK ) rc = lsmTreeCursorValue(pTreeCsr, &p, &n);
          if( rc==LSM_OK ) rc = sortedBlobSet(pEnv, &pCsr->val, p, n);
        }
        lsmTreeCursorReset(pTreeCsr);
        break;
      }
      case 128:
        if( res<0 && lsmTreeCursorValid(pTreeCsr) ){
          lsmTreeCursorNext(pTreeCsr);
        }
        break;
      default:
        if( res>0 ){
          assert( lsmTreeCursorValid(pTreeCsr) );
          lsmTreeCursorPrev(pTreeCsr);
        }
        break;
    }
  }
  return rc;
}
