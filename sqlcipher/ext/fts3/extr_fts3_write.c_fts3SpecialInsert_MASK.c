#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_8__ {void* bNoIncrDoclist; void* nMaxPendingData; void* nNodeSize; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 void* FUNC0 (char const*) ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(Fts3Table *p, sqlite3_value *pVal){
  int rc;                         /* Return Code */
  const char *zVal = (const char *)FUNC8(pVal);
  int nVal = FUNC7(pVal);

  if( !zVal ){
    return SQLITE_NOMEM;
  }else if( nVal==8 && 0==FUNC6(zVal, "optimize", 8) ){
    rc = FUNC4(p, 0);
  }else if( nVal==7 && 0==FUNC6(zVal, "rebuild", 7) ){
    rc = FUNC5(p);
  }else if( nVal==15 && 0==FUNC6(zVal, "integrity-check", 15) ){
    rc = FUNC3(p);
  }else if( nVal>6 && 0==FUNC6(zVal, "merge=", 6) ){
    rc = FUNC2(p, &zVal[6]);
  }else if( nVal>10 && 0==FUNC6(zVal, "automerge=", 10) ){
    rc = FUNC1(p, &zVal[10]);
#ifdef SQLITE_TEST
  }else if( nVal>9 && 0==sqlite3_strnicmp(zVal, "nodesize=", 9) ){
    p->nNodeSize = atoi(&zVal[9]);
    rc = SQLITE_OK;
  }else if( nVal>11 && 0==sqlite3_strnicmp(zVal, "maxpending=", 9) ){
    p->nMaxPendingData = atoi(&zVal[11]);
    rc = SQLITE_OK;
  }else if( nVal>21 && 0==sqlite3_strnicmp(zVal, "test-no-incr-doclist=", 21) ){
    p->bNoIncrDoclist = atoi(&zVal[21]);
    rc = SQLITE_OK;
#endif
  }else{
    rc = SQLITE_ERROR;
  }

  return rc;
}