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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {int bHasContext; int /*<<< orphan*/  db; void* pNotFound; void* pOpenClose; int /*<<< orphan*/  nMaxOpen; } ;
typedef  TYPE_1__ UnionTab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (int*,char**,int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC9 (int*,char const* const) ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ FUNC11 (char) ; 

__attribute__((used)) static void FUNC12(
  int *pRc,                       /* IN/OUT: Error code */
  UnionTab *pTab,                 /* Table to configure */
  sqlite3_stmt *pStmt,            /* SQL statement to find sources */
  int nArg,                       /* Number of entries in azArg[] array */
  const char * const *azArg,      /* Array of arguments to consider */
  char **pzErr                    /* OUT: Error message */
){
  int rc = *pRc;
  int i;
  if( rc==SQLITE_OK ){
    pTab->bHasContext = (FUNC3(pStmt)>4);
  }
  for(i=0; rc==SQLITE_OK && i<nArg; i++){
    char *zArg = FUNC9(&rc, azArg[i]);
    if( zArg ){
      int nOpt = 0;               /* Size of option name in bytes */
      char *zOpt;                 /* Pointer to option name */
      char *zVal;                 /* Pointer to value */

      FUNC7(zArg);
      zOpt = zArg;
      while( FUNC11(*zOpt) ) zOpt++;
      zVal = zOpt;
      if( *zVal==':' ) zVal++;
      while( FUNC10(*zVal) ) zVal++;
      nOpt = (int)(zVal-zOpt);

      while( FUNC11(*zVal) ) zVal++;
      if( *zVal=='=' ){
        zOpt[nOpt] = '\0';
        zVal++;
        while( FUNC11(*zVal) ) zVal++;
        zVal = FUNC9(&rc, zVal);
        if( zVal ){
          FUNC7(zVal);
          if( zOpt[0]==':' ){
            /* A value to bind to the SQL statement */
            int iParam = FUNC1(pStmt, zOpt);
            if( iParam==0 ){
              *pzErr = FUNC5(
                  "swarmvtab: no such SQL parameter: %s", zOpt
              );
              rc = SQLITE_ERROR;
            }else{
              rc = FUNC2(pStmt, iParam, zVal, -1, SQLITE_TRANSIENT);
            }
          }else if( nOpt==7 && 0==FUNC6(zOpt, "maxopen", 7) ){
            pTab->nMaxOpen = FUNC0(zVal);
            if( pTab->nMaxOpen<=0 ){
              *pzErr = FUNC5("swarmvtab: illegal maxopen value");
              rc = SQLITE_ERROR;
            }
          }else if( nOpt==7 && 0==FUNC6(zOpt, "missing", 7) ){
            if( pTab->pNotFound ){
              *pzErr = FUNC5(
                  "swarmvtab: duplicate \"missing\" option");
              rc = SQLITE_ERROR;
            }else{
              pTab->pNotFound = FUNC8(&rc, pzErr, pTab->db,
                  "SELECT \"%w\"(?%s)", zVal, pTab->bHasContext ? ",?" : ""
              );
            }
          }else if( nOpt==9 && 0==FUNC6(zOpt, "openclose", 9) ){
            if( pTab->pOpenClose ){
              *pzErr = FUNC5(
                  "swarmvtab: duplicate \"openclose\" option");
              rc = SQLITE_ERROR;
            }else{
              pTab->pOpenClose = FUNC8(&rc, pzErr, pTab->db,
                  "SELECT \"%w\"(?,?%s)", zVal, pTab->bHasContext ? ",?" : ""
              );
            }
          }else{
            *pzErr = FUNC5("swarmvtab: unrecognized option: %s",zOpt);
            rc = SQLITE_ERROR;
          }
          FUNC4(zVal);
        }
      }else{
        if( i==0 && nArg==1 ){
          pTab->pNotFound = FUNC8(&rc, pzErr, pTab->db,
              "SELECT \"%w\"(?)", zArg
          );
        }else{
          *pzErr = FUNC5( "swarmvtab: parse error: %s", azArg[i]);
          rc = SQLITE_ERROR;
        }
      }
      FUNC4(zArg);
    }
  }
  *pRc = rc;
}