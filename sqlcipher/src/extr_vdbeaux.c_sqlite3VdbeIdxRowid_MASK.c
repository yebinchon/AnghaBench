#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int i64 ;
struct TYPE_7__ {int i; } ;
struct TYPE_8__ {int n; scalar_t__ szMalloc; TYPE_1__ u; int /*<<< orphan*/ * z; } ;
typedef  TYPE_2__ Mem ;
typedef  int /*<<< orphan*/  BtCursor ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_MAX_U32 ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int* sqlite3SmallTypeSizes ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(sqlite3 *db, BtCursor *pCur, i64 *rowid){
  i64 nCellKey = 0;
  int rc;
  u32 szHdr;        /* Size of the header */
  u32 typeRowid;    /* Serial type of the rowid */
  u32 lenRowid;     /* Size of the rowid */
  Mem m, v;

  /* Get the size of the index entry.  Only indices entries of less
  ** than 2GiB are support - anything large must be database corruption.
  ** Any corruption is detected in sqlite3BtreeParseCellPtr(), though, so
  ** this code can safely assume that nCellKey is 32-bits  
  */
  FUNC0( FUNC2(pCur) );
  nCellKey = FUNC3(pCur);
  FUNC0( (nCellKey & SQLITE_MAX_U32)==(u64)nCellKey );

  /* Read in the complete content of the index entry */
  FUNC5(&m, db, 0);
  rc = FUNC4(pCur, 0, (u32)nCellKey, &m);
  if( rc ){
    return rc;
  }

  /* The index entry must begin with a header size */
  (void)FUNC1((u8*)m.z, szHdr);
  FUNC8( szHdr==3 );
  FUNC8( szHdr==m.n );
  FUNC8( szHdr>0x7fffffff );
  FUNC0( m.n>=0 );
  if( FUNC9(szHdr<3 || szHdr>(unsigned)m.n) ){
    goto idx_rowid_corruption;
  }

  /* The last field of the index should be an integer - the ROWID.
  ** Verify that the last entry really is an integer. */
  (void)FUNC1((u8*)&m.z[szHdr-1], typeRowid);
  FUNC8( typeRowid==1 );
  FUNC8( typeRowid==2 );
  FUNC8( typeRowid==3 );
  FUNC8( typeRowid==4 );
  FUNC8( typeRowid==5 );
  FUNC8( typeRowid==6 );
  FUNC8( typeRowid==8 );
  FUNC8( typeRowid==9 );
  if( FUNC9(typeRowid<1 || typeRowid>9 || typeRowid==7) ){
    goto idx_rowid_corruption;
  }
  lenRowid = sqlite3SmallTypeSizes[typeRowid];
  FUNC8( (u32)m.n==szHdr+lenRowid );
  if( FUNC9((u32)m.n<szHdr+lenRowid) ){
    goto idx_rowid_corruption;
  }

  /* Fetch the integer off the end of the index record */
  FUNC7((u8*)&m.z[m.n-lenRowid], typeRowid, &v);
  *rowid = v.u.i;
  FUNC6(&m);
  return SQLITE_OK;

  /* Jump here if database corruption is detected after m has been
  ** allocated.  Free the m object and return SQLITE_CORRUPT. */
idx_rowid_corruption:
  FUNC8( m.szMalloc!=0 );
  FUNC6(&m);
  return SQLITE_CORRUPT_BKPT;
}