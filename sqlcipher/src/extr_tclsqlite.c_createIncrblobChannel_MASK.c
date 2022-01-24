#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zChannel ;
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_blob ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_6__ {int /*<<< orphan*/  channel; TYPE_1__* pDb; struct TYPE_6__* pPrev; struct TYPE_6__* pNext; int /*<<< orphan*/ * pBlob; scalar_t__ iSeek; } ;
struct TYPE_5__ {TYPE_2__* pIncrblob; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ SqliteDb ;
typedef  TYPE_2__ IncrblobChannel ;

/* Variables and functions */
 int /*<<< orphan*/  IncrblobChannelType ; 
 int SQLITE_OK ; 
 int TCL_ERROR ; 
 int TCL_OK ; 
 int TCL_READABLE ; 
 int /*<<< orphan*/  TCL_VOLATILE ; 
 int TCL_WRITABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,int) ; 

__attribute__((used)) static int FUNC8(
  Tcl_Interp *interp,
  SqliteDb *pDb,
  const char *zDb,
  const char *zTable,
  const char *zColumn,
  sqlite_int64 iRow,
  int isReadonly
){
  IncrblobChannel *p;
  sqlite3 *db = pDb->db;
  sqlite3_blob *pBlob;
  int rc;
  int flags = TCL_READABLE|(isReadonly ? 0 : TCL_WRITABLE);

  /* This variable is used to name the channels: "incrblob_[incr count]" */
  static int count = 0;
  char zChannel[64];

  rc = FUNC5(db, zDb, zTable, zColumn, iRow, !isReadonly, &pBlob);
  if( rc!=SQLITE_OK ){
    FUNC4(interp, (char *)FUNC6(pDb->db), TCL_VOLATILE);
    return TCL_ERROR;
  }

  p = (IncrblobChannel *)FUNC0(sizeof(IncrblobChannel));
  p->iSeek = 0;
  p->pBlob = pBlob;

  FUNC7(sizeof(zChannel), zChannel, "incrblob_%d", ++count);
  p->channel = FUNC1(&IncrblobChannelType, zChannel, p, flags);
  FUNC3(interp, p->channel);

  /* Link the new channel into the SqliteDb.pIncrblob list. */
  p->pNext = pDb->pIncrblob;
  p->pPrev = 0;
  if( p->pNext ){
    p->pNext->pPrev = p;
  }
  pDb->pIncrblob = p;
  p->pDb = pDb;

  FUNC4(interp, (char *)FUNC2(p->channel), TCL_VOLATILE);
  return TCL_OK;
}