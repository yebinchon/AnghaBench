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
struct TYPE_3__ {int* abUnindexed; size_t nCol; char** azCol; } ;
typedef  TYPE_1__ Fts5Config ;

/* Variables and functions */
 char* FTS5_RANK_NAME ; 
 char* FTS5_ROWID_NAME ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 char* FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(
  Fts5Config *p, 
  char *zCol, 
  char *zArg, 
  char **pzErr
){
  int rc = SQLITE_OK;
  if( 0==FUNC1(zCol, FTS5_RANK_NAME) 
   || 0==FUNC1(zCol, FTS5_ROWID_NAME) 
  ){
    *pzErr = FUNC0("reserved fts5 column name: %s", zCol);
    rc = SQLITE_ERROR;
  }else if( zArg ){
    if( 0==FUNC1(zArg, "unindexed") ){
      p->abUnindexed[p->nCol] = 1;
    }else{
      *pzErr = FUNC0("unrecognized column option: %s", zArg);
      rc = SQLITE_ERROR;
    }
  }

  p->azCol[p->nCol++] = zCol;
  return rc;
}