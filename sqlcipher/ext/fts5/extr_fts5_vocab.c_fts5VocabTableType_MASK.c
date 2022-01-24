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

/* Variables and functions */
 int FTS5_VOCAB_COL ; 
 int FTS5_VOCAB_INSTANCE ; 
 int FTS5_VOCAB_ROW ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(const char *zType, char **pzErr, int *peType){
  int rc = SQLITE_OK;
  char *zCopy = FUNC1(&rc, zType, -1);
  if( rc==SQLITE_OK ){
    FUNC0(zCopy);
    if( FUNC4(zCopy, "col")==0 ){
      *peType = FTS5_VOCAB_COL;
    }else

    if( FUNC4(zCopy, "row")==0 ){
      *peType = FTS5_VOCAB_ROW;
    }else
    if( FUNC4(zCopy, "instance")==0 ){
      *peType = FTS5_VOCAB_INSTANCE;
    }else
    {
      *pzErr = FUNC3("fts5vocab: unknown table type: %Q", zCopy);
      rc = SQLITE_ERROR;
    }
    FUNC2(zCopy);
  }

  return rc;
}