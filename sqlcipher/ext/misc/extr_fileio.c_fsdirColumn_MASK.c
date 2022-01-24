#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_3__ {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_mtime; } ;
struct TYPE_4__ {char* zPath; size_t nBase; TYPE_1__ sStat; } ;
typedef  TYPE_2__ fsdir_cursor ;

/* Variables and functions */
#define  FSDIR_COLUMN_DATA 132 
#define  FSDIR_COLUMN_MODE 131 
#define  FSDIR_COLUMN_MTIME 130 
#define  FSDIR_COLUMN_NAME 129 
#define  FSDIR_COLUMN_PATH 128 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
  sqlite3_vtab_cursor *cur,   /* The cursor */
  sqlite3_context *ctx,       /* First argument to sqlite3_result_...() */
  int i                       /* Which column to return */
){
  fsdir_cursor *pCur = (fsdir_cursor*)cur;
  switch( i ){
    case FSDIR_COLUMN_NAME: {
      FUNC9(ctx, &pCur->zPath[pCur->nBase], -1, SQLITE_TRANSIENT);
      break;
    }

    case FSDIR_COLUMN_MODE:
      FUNC7(ctx, pCur->sStat.st_mode);
      break;

    case FSDIR_COLUMN_MTIME:
      FUNC7(ctx, pCur->sStat.st_mtime);
      break;

    case FSDIR_COLUMN_DATA: {
      mode_t m = pCur->sStat.st_mode;
      if( FUNC0(m) ){
        FUNC8(ctx);
#if !defined(_WIN32) && !defined(WIN32)
      }else if( FUNC1(m) ){
        char aStatic[64];
        char *aBuf = aStatic;
        sqlite3_int64 nBuf = 64;
        int n;

        while( 1 ){
          n = FUNC3(pCur->zPath, aBuf, nBuf);
          if( n<nBuf ) break;
          if( aBuf!=aStatic ) FUNC4(aBuf);
          nBuf = nBuf*2;
          aBuf = FUNC5(nBuf);
          if( aBuf==0 ){
            FUNC6(ctx);
            return SQLITE_NOMEM;
          }
        }

        FUNC9(ctx, aBuf, n, SQLITE_TRANSIENT);
        if( aBuf!=aStatic ) FUNC4(aBuf);
#endif
      }else{
        FUNC2(ctx, pCur->zPath);
      }
    }
    case FSDIR_COLUMN_PATH:
    default: {
      /* The FSDIR_COLUMN_PATH and FSDIR_COLUMN_DIR are input parameters.
      ** always return their values as NULL */
      break;
    }
  }
  return SQLITE_OK;
}