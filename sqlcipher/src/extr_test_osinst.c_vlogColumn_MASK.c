#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_2__ {char* zTransient; char** azFile; int /*<<< orphan*/  nFile; int /*<<< orphan*/ * aBuf; } ;
typedef  TYPE_1__ VfslogCsr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(
  sqlite3_vtab_cursor *pCursor, 
  sqlite3_context *ctx, 
  int i
){
  unsigned int val;
  VfslogCsr *pCsr = (VfslogCsr *)pCursor;

  FUNC0( i<7 );
  val = FUNC1(&pCsr->aBuf[4*i]);

  switch( i ){
    case 0: {
      FUNC3(ctx, FUNC4(val), -1, SQLITE_STATIC);
      break;
    }
    case 1: {
      char *zStr = pCsr->zTransient;
      if( val!=0 && val<(unsigned)pCsr->nFile ){
        zStr = pCsr->azFile[val];
      }
      FUNC3(ctx, zStr, -1, SQLITE_TRANSIENT);
      break;
    }
    default:
      FUNC2(ctx, val);
      break;
  }

  return SQLITE_OK;
}