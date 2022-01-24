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
struct stat {int st_mode; int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_2__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ FstreeCsr ;

/* Variables and functions */
 int SQLITE_IOERR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  FstreeCsr *pCsr = (FstreeCsr*)cur;
  if( i==0 ){      /* path */
    FUNC8(ctx, FUNC3(pCsr->pStmt, 0));
  }else{
    struct stat sBuf;
    FUNC1(pCsr->fd, &sBuf);

    if( FUNC0(sBuf.st_mode) ){
      if( i==1 ){
        FUNC7(ctx, sBuf.st_size);
      }else{
        int nRead;
        char *aBuf = FUNC5(sBuf.st_mode+1);
        if( !aBuf ) return SQLITE_NOMEM;
        nRead = FUNC2(pCsr->fd, aBuf, sBuf.st_mode);
        if( nRead!=sBuf.st_mode ){
          return SQLITE_IOERR;
        }
        FUNC6(ctx, aBuf, nRead, SQLITE_TRANSIENT);
        FUNC4(aBuf);
      }
    }
  }

  return SQLITE_OK;
}