#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_11__ {scalar_t__ zRankArgs; scalar_t__ zRank; } ;
struct TYPE_9__ {TYPE_1__* pVtab; } ;
struct TYPE_10__ {char* zRank; char* zRankArgs; TYPE_2__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  zErrMsg; } ;
typedef  TYPE_3__ Fts5Cursor ;
typedef  TYPE_4__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_FREE_ZRANK ; 
 scalar_t__ FTS5_DEFAULT_RANK ; 
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int FUNC1 (char const*,char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  Fts5Config *pConfig,
  Fts5Cursor *pCsr, 
  sqlite3_value *pRank
){
  int rc = SQLITE_OK;
  if( pRank ){
    const char *z = (const char*)FUNC3(pRank);
    char *zRank = 0;
    char *zRankArgs = 0;

    if( z==0 ){
      if( FUNC4(pRank)==SQLITE_NULL ) rc = SQLITE_ERROR;
    }else{
      rc = FUNC1(z, &zRank, &zRankArgs);
    }
    if( rc==SQLITE_OK ){
      pCsr->zRank = zRank;
      pCsr->zRankArgs = zRankArgs;
      FUNC0(pCsr, FTS5CSR_FREE_ZRANK);
    }else if( rc==SQLITE_ERROR ){
      pCsr->base.pVtab->zErrMsg = FUNC2(
          "parse error in rank function: %s", z
      );
    }
  }else{
    if( pConfig->zRank ){
      pCsr->zRank = (char*)pConfig->zRank;
      pCsr->zRankArgs = (char*)pConfig->zRankArgs;
    }else{
      pCsr->zRank = (char*)FTS5_DEFAULT_RANK;
      pCsr->zRankArgs = 0;
    }
  }
  return rc;
}