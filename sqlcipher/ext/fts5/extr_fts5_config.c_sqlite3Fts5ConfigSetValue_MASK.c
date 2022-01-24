#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_3__ {int pgsz; int nHashSize; int nAutomerge; int nUsermerge; int nCrisisMerge; char* zRank; char* zRankArgs; } ;
typedef  TYPE_1__ Fts5Config ;

/* Variables and functions */
 int FTS5_DEFAULT_AUTOMERGE ; 
 int FTS5_DEFAULT_CRISISMERGE ; 
 int FTS5_MAX_PAGE_SIZE ; 
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_INTEGER ; 
 int SQLITE_OK ; 
 int FUNC0 (char const*,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(
  Fts5Config *pConfig, 
  const char *zKey, 
  sqlite3_value *pVal,
  int *pbBadkey
){
  int rc = SQLITE_OK;

  if( 0==FUNC2(zKey, "pgsz") ){
    int pgsz = 0;
    if( SQLITE_INTEGER==FUNC4(pVal) ){
      pgsz = FUNC3(pVal);
    }
    if( pgsz<=0 || pgsz>FTS5_MAX_PAGE_SIZE ){
      *pbBadkey = 1;
    }else{
      pConfig->pgsz = pgsz;
    }
  }

  else if( 0==FUNC2(zKey, "hashsize") ){
    int nHashSize = -1;
    if( SQLITE_INTEGER==FUNC4(pVal) ){
      nHashSize = FUNC3(pVal);
    }
    if( nHashSize<=0 ){
      *pbBadkey = 1;
    }else{
      pConfig->nHashSize = nHashSize;
    }
  }

  else if( 0==FUNC2(zKey, "automerge") ){
    int nAutomerge = -1;
    if( SQLITE_INTEGER==FUNC4(pVal) ){
      nAutomerge = FUNC3(pVal);
    }
    if( nAutomerge<0 || nAutomerge>64 ){
      *pbBadkey = 1;
    }else{
      if( nAutomerge==1 ) nAutomerge = FTS5_DEFAULT_AUTOMERGE;
      pConfig->nAutomerge = nAutomerge;
    }
  }

  else if( 0==FUNC2(zKey, "usermerge") ){
    int nUsermerge = -1;
    if( SQLITE_INTEGER==FUNC4(pVal) ){
      nUsermerge = FUNC3(pVal);
    }
    if( nUsermerge<2 || nUsermerge>16 ){
      *pbBadkey = 1;
    }else{
      pConfig->nUsermerge = nUsermerge;
    }
  }

  else if( 0==FUNC2(zKey, "crisismerge") ){
    int nCrisisMerge = -1;
    if( SQLITE_INTEGER==FUNC4(pVal) ){
      nCrisisMerge = FUNC3(pVal);
    }
    if( nCrisisMerge<0 ){
      *pbBadkey = 1;
    }else{
      if( nCrisisMerge<=1 ) nCrisisMerge = FTS5_DEFAULT_CRISISMERGE;
      pConfig->nCrisisMerge = nCrisisMerge;
    }
  }

  else if( 0==FUNC2(zKey, "rank") ){
    const char *zIn = (const char*)FUNC5(pVal);
    char *zRank;
    char *zRankArgs;
    rc = FUNC0(zIn, &zRank, &zRankArgs);
    if( rc==SQLITE_OK ){
      FUNC1(pConfig->zRank);
      FUNC1(pConfig->zRankArgs);
      pConfig->zRank = zRank;
      pConfig->zRankArgs = zRankArgs;
    }else if( rc==SQLITE_ERROR ){
      rc = SQLITE_OK;
      *pbBadkey = 1;
    }
  }else{
    *pbBadkey = 1;
  }
  return rc;
}