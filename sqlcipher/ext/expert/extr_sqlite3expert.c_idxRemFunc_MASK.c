#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct IdxRemSlot {int eType; char* z; int n; int nByte; int /*<<< orphan*/  rVal; int /*<<< orphan*/  iVal; } ;
struct IdxRemCtx {int nSlot; struct IdxRemSlot* aSlot; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  struct IdxRemCtx *p = (struct IdxRemCtx*)FUNC8(pCtx);
  struct IdxRemSlot *pSlot;
  int iSlot;
  FUNC0( argc==2 );

  iSlot = FUNC12(argv[0]);
  FUNC0( iSlot<=p->nSlot );
  pSlot = &p->aSlot[iSlot];

  switch( pSlot->eType ){
    case SQLITE_NULL:
      /* no-op */
      break;

    case SQLITE_INTEGER:
      FUNC6(pCtx, pSlot->iVal);
      break;

    case SQLITE_FLOAT:
      FUNC4(pCtx, pSlot->rVal);
      break;

    case SQLITE_BLOB:
      FUNC3(pCtx, pSlot->z, pSlot->n, SQLITE_TRANSIENT);
      break;

    case SQLITE_TEXT:
      FUNC7(pCtx, pSlot->z, pSlot->n, SQLITE_TRANSIENT);
      break;
  }

  pSlot->eType = FUNC15(argv[1]);
  switch( pSlot->eType ){
    case SQLITE_NULL:
      /* no-op */
      break;

    case SQLITE_INTEGER:
      pSlot->iVal = FUNC13(argv[1]);
      break;

    case SQLITE_FLOAT:
      pSlot->rVal = FUNC11(argv[1]);
      break;

    case SQLITE_BLOB:
    case SQLITE_TEXT: {
      int nByte = FUNC10(argv[1]);
      if( nByte>pSlot->nByte ){
        char *zNew = (char*)FUNC2(pSlot->z, nByte*2);
        if( zNew==0 ){
          FUNC5(pCtx);
          return;
        }
        pSlot->nByte = nByte*2;
        pSlot->z = zNew;
      }
      pSlot->n = nByte;
      if( pSlot->eType==SQLITE_BLOB ){
        FUNC1(pSlot->z, FUNC9(argv[1]), nByte);
      }else{
        FUNC1(pSlot->z, FUNC14(argv[1]), nByte);
      }
      break;
    }
  }
}