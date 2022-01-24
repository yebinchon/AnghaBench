#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_9__ {scalar_t__ eContent; void* bPrefixIndex; } ;
struct TYPE_7__ {TYPE_3__* pConfig; int /*<<< orphan*/  pIndex; } ;
struct TYPE_8__ {int /*<<< orphan*/  pStorage; TYPE_1__ p; } ;
typedef  TYPE_2__ Fts5FullTable ;
typedef  TYPE_3__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_CONTENT_NONE ; 
 scalar_t__ FTS5_CONTENT_NORMAL ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (TYPE_3__*,char const*,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
  Fts5FullTable *pTab,            /* Fts5 table object */
  const char *zCmd,               /* Text inserted into table-name column */
  sqlite3_value *pVal             /* Value inserted into rank column */
){
  Fts5Config *pConfig = pTab->p.pConfig;
  int rc = SQLITE_OK;
  int bError = 0;

  if( 0==FUNC9("delete-all", zCmd) ){
    if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
      FUNC0(pTab, 
          "'delete-all' may only be used with a "
          "contentless or external content fts5 table"
      );
      rc = SQLITE_ERROR;
    }else{
      rc = FUNC4(pTab->pStorage);
    }
  }else if( 0==FUNC9("rebuild", zCmd) ){
    if( pConfig->eContent==FTS5_CONTENT_NONE ){
      FUNC0(pTab, 
          "'rebuild' may not be used with a contentless fts5 table"
      );
      rc = SQLITE_ERROR;
    }else{
      rc = FUNC8(pTab->pStorage);
    }
  }else if( 0==FUNC9("optimize", zCmd) ){
    rc = FUNC7(pTab->pStorage);
  }else if( 0==FUNC9("merge", zCmd) ){
    int nMerge = FUNC10(pVal);
    rc = FUNC6(pTab->pStorage, nMerge);
  }else if( 0==FUNC9("integrity-check", zCmd) ){
    rc = FUNC5(pTab->pStorage);
#ifdef SQLITE_DEBUG
  }else if( 0==sqlite3_stricmp("prefix-index", zCmd) ){
    pConfig->bPrefixIndex = sqlite3_value_int(pVal);
#endif
  }else{
    rc = FUNC2(pTab->p.pIndex);
    if( rc==SQLITE_OK ){
      rc = FUNC1(pTab->p.pConfig, zCmd, pVal, &bError);
    }
    if( rc==SQLITE_OK ){
      if( bError ){
        rc = SQLITE_ERROR;
      }else{
        rc = FUNC3(pTab->pStorage, zCmd, pVal, 0);
      }
    }
  }
  return rc;
}