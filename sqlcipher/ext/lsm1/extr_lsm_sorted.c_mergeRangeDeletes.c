
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nData; int pData; } ;
struct TYPE_8__ {int* aTree; int flags; int nPtr; int eType; TYPE_2__ key; TYPE_1__* pDb; } ;
struct TYPE_6__ {int xCmp; } ;
typedef TYPE_3__ MultiCursor ;


 int CURSOR_DATA_SEGMENT ;
 int CURSOR_IGNORE_DELETE ;
 int CURSOR_NEXT_OK ;
 int LSM_END_DELETE ;
 int LSM_INSERT ;
 int LSM_POINT_DELETE ;
 int LSM_START_DELETE ;
 int assert (int) ;
 int multiCursorGetKey (TYPE_3__*,int,int*,void**,int*) ;
 int rtTopic (int) ;
 int sortedKeyCompare (int ,int ,int ,int ,int ,void*,int) ;

__attribute__((used)) static void mergeRangeDeletes(MultiCursor *pCsr, int *piVal, int *piFlags){
  int f = *piFlags;
  int iKey = pCsr->aTree[1];
  int i;

  assert( pCsr->flags & CURSOR_NEXT_OK );
  if( pCsr->flags & CURSOR_IGNORE_DELETE ){



    assert( (f & LSM_POINT_DELETE)==0 );
    f &= ~(LSM_START_DELETE|LSM_END_DELETE);
  }else{
    for(i=0; i<(CURSOR_DATA_SEGMENT + pCsr->nPtr); i++){
      if( i!=iKey ){
        int eType;
        void *pKey;
        int nKey;
        int res;
        multiCursorGetKey(pCsr, i, &eType, &pKey, &nKey);

        if( pKey ){
          res = sortedKeyCompare(pCsr->pDb->xCmp,
              rtTopic(pCsr->eType), pCsr->key.pData, pCsr->key.nData,
              rtTopic(eType), pKey, nKey
          );
          assert( res<=0 );
          if( res==0 ){
            if( (f & (LSM_INSERT|LSM_POINT_DELETE))==0 ){
              if( eType & LSM_INSERT ){
                f |= LSM_INSERT;
                *piVal = i;
              }
              else if( eType & LSM_POINT_DELETE ){
                f |= LSM_POINT_DELETE;
              }
            }
            f |= (eType & (LSM_END_DELETE|LSM_START_DELETE));
          }

          if( i>iKey && (eType & LSM_END_DELETE) && res<0 ){
            if( f & (LSM_INSERT|LSM_POINT_DELETE) ){
              f |= (LSM_END_DELETE|LSM_START_DELETE);
            }else{
              f = 0;
            }
            break;
          }
        }
      }
    }

    assert( (f & LSM_INSERT)==0 || (f & LSM_POINT_DELETE)==0 );
    if( (f & LSM_START_DELETE)
     && (f & LSM_END_DELETE)
     && (f & LSM_POINT_DELETE )
    ){
      f = 0;
    }
  }

  *piFlags = f;
}
