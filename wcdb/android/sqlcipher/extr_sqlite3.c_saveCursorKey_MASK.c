#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {scalar_t__ eState; scalar_t__ pKey; int nKey; scalar_t__ curIntKey; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,void*) ; 
 int FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(BtCursor *pCur){
  int rc = SQLITE_OK;
  FUNC0( CURSOR_VALID==pCur->eState );
  FUNC0( 0==pCur->pKey );
  FUNC0( FUNC1(pCur) );

  if( pCur->curIntKey ){
    /* Only the rowid is required for a table btree */
    pCur->nKey = FUNC3(pCur);
  }else{
    /* For an index btree, save the complete key content. It is possible
    ** that the current key is corrupt. In that case, it is possible that
    ** the sqlite3VdbeRecordUnpack() function may overread the buffer by
    ** up to the size of 1 varint plus 1 8-byte value when the cursor 
    ** position is restored. Hence the 17 bytes of padding allocated 
    ** below. */
    void *pKey;
    pCur->nKey = FUNC5(pCur);
    pKey = FUNC6( pCur->nKey + 9 + 8 );
    if( pKey ){
      rc = FUNC4(pCur, 0, (int)pCur->nKey, pKey);
      if( rc==SQLITE_OK ){
        FUNC2(((u8*)pKey)+pCur->nKey, 0, 9+8);
        pCur->pKey = pKey;
      }else{
        FUNC7(pKey);
      }
    }else{
      rc = SQLITE_NOMEM_BKPT;
    }
  }
  FUNC0( !pCur->curIntKey || !pCur->pKey );
  return rc;
}