
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int sqlite3 ;
typedef int i64 ;
struct TYPE_7__ {int i; } ;
struct TYPE_8__ {int n; scalar_t__ szMalloc; TYPE_1__ u; int * z; } ;
typedef TYPE_2__ Mem ;
typedef int BtCursor ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_MAX_U32 ;
 int SQLITE_OK ;
 int assert (int) ;
 int getVarint32 (int *,int) ;
 int sqlite3BtreeCursorIsValid (int *) ;
 int sqlite3BtreePayloadSize (int *) ;
 int* sqlite3SmallTypeSizes ;
 int sqlite3VdbeMemFromBtree (int *,int ,int,TYPE_2__*) ;
 int sqlite3VdbeMemInit (TYPE_2__*,int *,int ) ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;
 int sqlite3VdbeSerialGet (int *,int,TYPE_2__*) ;
 int testcase (int) ;
 scalar_t__ unlikely (int) ;

int sqlite3VdbeIdxRowid(sqlite3 *db, BtCursor *pCur, i64 *rowid){
  i64 nCellKey = 0;
  int rc;
  u32 szHdr;
  u32 typeRowid;
  u32 lenRowid;
  Mem m, v;






  assert( sqlite3BtreeCursorIsValid(pCur) );
  nCellKey = sqlite3BtreePayloadSize(pCur);
  assert( (nCellKey & SQLITE_MAX_U32)==(u64)nCellKey );


  sqlite3VdbeMemInit(&m, db, 0);
  rc = sqlite3VdbeMemFromBtree(pCur, 0, (u32)nCellKey, &m);
  if( rc ){
    return rc;
  }


  (void)getVarint32((u8*)m.z, szHdr);
  testcase( szHdr==3 );
  testcase( szHdr==m.n );
  testcase( szHdr>0x7fffffff );
  assert( m.n>=0 );
  if( unlikely(szHdr<3 || szHdr>(unsigned)m.n) ){
    goto idx_rowid_corruption;
  }



  (void)getVarint32((u8*)&m.z[szHdr-1], typeRowid);
  testcase( typeRowid==1 );
  testcase( typeRowid==2 );
  testcase( typeRowid==3 );
  testcase( typeRowid==4 );
  testcase( typeRowid==5 );
  testcase( typeRowid==6 );
  testcase( typeRowid==8 );
  testcase( typeRowid==9 );
  if( unlikely(typeRowid<1 || typeRowid>9 || typeRowid==7) ){
    goto idx_rowid_corruption;
  }
  lenRowid = sqlite3SmallTypeSizes[typeRowid];
  testcase( (u32)m.n==szHdr+lenRowid );
  if( unlikely((u32)m.n<szHdr+lenRowid) ){
    goto idx_rowid_corruption;
  }


  sqlite3VdbeSerialGet((u8*)&m.z[m.n-lenRowid], typeRowid, &v);
  *rowid = v.u.i;
  sqlite3VdbeMemRelease(&m);
  return SQLITE_OK;



idx_rowid_corruption:
  testcase( m.szMalloc!=0 );
  sqlite3VdbeMemRelease(&m);
  return SQLITE_CORRUPT_BKPT;
}
