#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct Option   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ p; } ;
struct TYPE_6__ {int eType; TYPE_3__ output; scalar_t__ pgno; } ;
typedef  TYPE_1__ bt_info ;
typedef  int /*<<< orphan*/  bt_db ;
struct Option {char const* zName; int bPgno; int eOpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONTROL_INFO ; 
 int /*<<< orphan*/  BT_INFO_BLOCK_FREELIST ; 
 int /*<<< orphan*/  BT_INFO_FILENAME ; 
 int /*<<< orphan*/  BT_INFO_HDRDUMP ; 
 int /*<<< orphan*/  BT_INFO_PAGEDUMP ; 
 int /*<<< orphan*/  BT_INFO_PAGEDUMP_ASCII ; 
 int /*<<< orphan*/  BT_INFO_PAGE_FREELIST ; 
 int /*<<< orphan*/  BT_INFO_PAGE_LEAKS ; 
 int SQLITE4_OK ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (TYPE_2__*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int FUNC12(int nArg, char **azArg){
  struct Option {
    const char *zName;
    int bPgno;
    int eOpt;
  } aOpt [] = { 
    { "dbhdr",          0, BT_INFO_HDRDUMP },
    { "filename",       0, BT_INFO_FILENAME },
    { "block_freelist", 0, BT_INFO_BLOCK_FREELIST },
    { "page_freelist",  0, BT_INFO_PAGE_FREELIST },
    { "filename",       0, BT_INFO_FILENAME },
    { "page",           1, BT_INFO_PAGEDUMP },
    { "page_ascii",     1, BT_INFO_PAGEDUMP_ASCII },
    { "leaks",          0, BT_INFO_PAGE_LEAKS },
    { 0, 0 } 
  };
  int iOpt;
  int rc;
  bt_info buf;
  char *zOpt;
  char *zFile;

  bt_db *db = 0;

  if( nArg<2 ){
    FUNC11("FILENAME OPTION ...");
    return -1;
  }
  zFile = azArg[0];
  zOpt = azArg[1];

  rc = FUNC8(aOpt, "option", zOpt, &iOpt);
  if( rc!=0 ) return rc;
  if( nArg!=2+aOpt[iOpt].bPgno ){
    FUNC10("FILENAME %s %s", zOpt, aOpt[iOpt].bPgno ? "PGNO" : "");
    return -4;
  }

  rc = FUNC3(FUNC7(), 0, &db);
  if( rc!=SQLITE4_OK ){
    FUNC9("sqlite4BtNew() failed: %d", rc);
    return -2;
  }
  rc = FUNC4(db, zFile);
  if( rc!=SQLITE4_OK ){
    FUNC9("sqlite4BtOpen() failed: %d", rc);
    return -3;
  }

  buf.eType = aOpt[iOpt].eOpt;
  buf.pgno = 0;
  FUNC6(&buf.output, 0);

  if( aOpt[iOpt].bPgno ){
    buf.pgno = (u32)FUNC0(azArg[2]);
  }

  rc = FUNC2(db, BT_CONTROL_INFO, &buf);
  if( rc!=SQLITE4_OK ){
    FUNC9("sqlite4BtControl() failed: %d\n", rc);
    return -4;
  }

  FUNC1("%s\n", (char*)buf.output.p);
  FUNC5(&buf.output);
  return 0;
}