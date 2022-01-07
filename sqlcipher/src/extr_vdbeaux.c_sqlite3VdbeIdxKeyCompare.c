
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3 ;
typedef int i64 ;
struct TYPE_8__ {int * pCursor; } ;
struct TYPE_9__ {scalar_t__ eCurType; TYPE_1__ uc; } ;
typedef TYPE_2__ VdbeCursor ;
typedef int UnpackedRecord ;
struct TYPE_10__ {int z; int n; } ;
typedef TYPE_3__ Mem ;
typedef int BtCursor ;


 scalar_t__ CURTYPE_BTREE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3BtreeCursorIsValid (int *) ;
 int sqlite3BtreePayloadSize (int *) ;
 int sqlite3VdbeMemFromBtree (int *,int ,int ,TYPE_3__*) ;
 int sqlite3VdbeMemInit (TYPE_3__*,int *,int ) ;
 int sqlite3VdbeMemRelease (TYPE_3__*) ;
 int sqlite3VdbeRecordCompareWithSkip (int ,int ,int *,int ) ;

int sqlite3VdbeIdxKeyCompare(
  sqlite3 *db,
  VdbeCursor *pC,
  UnpackedRecord *pUnpacked,
  int *res
){
  i64 nCellKey = 0;
  int rc;
  BtCursor *pCur;
  Mem m;

  assert( pC->eCurType==CURTYPE_BTREE );
  pCur = pC->uc.pCursor;
  assert( sqlite3BtreeCursorIsValid(pCur) );
  nCellKey = sqlite3BtreePayloadSize(pCur);


  if( nCellKey<=0 || nCellKey>0x7fffffff ){
    *res = 0;
    return SQLITE_CORRUPT_BKPT;
  }
  sqlite3VdbeMemInit(&m, db, 0);
  rc = sqlite3VdbeMemFromBtree(pCur, 0, (u32)nCellKey, &m);
  if( rc ){
    return rc;
  }
  *res = sqlite3VdbeRecordCompareWithSkip(m.n, m.z, pUnpacked, 0);
  sqlite3VdbeMemRelease(&m);
  return SQLITE_OK;
}
