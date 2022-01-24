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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  r ;
typedef  int i64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC1 (unsigned char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (double*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (char*,char const*,...) ; 
 int FUNC15 (char*,int /*<<< orphan*/ **) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (char*,char const*) ; 

int FUNC19(int argc, char **argv){
  sqlite3 *db;
  sqlite3_stmt *pStmt;
  char *zIdx = 0;
  int rc, j, x, y, mxHdr;
  const unsigned char *aSample;
  int nSample;
  i64 iVal;
  const char *zSep;
  int iRow = 0;

  if( argc!=2 ){
    FUNC3(stderr, "Usage: %s DATABASE-FILE\n", argv[0]);
    FUNC2(1);
  }
  rc = FUNC15(argv[1], &db);
  if( rc!=SQLITE_OK || db==0 ){
    FUNC3(stderr, "Cannot open database file [%s]\n", argv[1]);
    FUNC2(1);
  }
  rc = FUNC16(db,
        "SELECT tbl||'.'||idx, nEq, nLT, nDLt, sample "
        "FROM sqlite_stat4 ORDER BY 1", -1,
        &pStmt, 0);
  if( rc!=SQLITE_OK || pStmt==0 ){
    FUNC3(stderr, "%s\n", FUNC11(db));
    FUNC7(db);
    FUNC2(1);
  }
  while( SQLITE_ROW==FUNC17(pStmt) ){
    if( zIdx==0 || FUNC18(zIdx, (const char*)FUNC10(pStmt,0))!=0 ){
      if( zIdx ) FUNC5("\n**************************************"
                        "**************\n\n");
      FUNC13(zIdx);
      zIdx = FUNC14("%s", FUNC10(pStmt,0));
      iRow = 0;
    }
    FUNC5("%s sample %d ------------------------------------\n", zIdx, ++iRow);
    FUNC5("  nEq    = %s\n", FUNC10(pStmt,1));
    FUNC5("  nLt    = %s\n", FUNC10(pStmt,2));
    FUNC5("  nDLt   = %s\n", FUNC10(pStmt,3));
    FUNC5("  sample = x'");
    aSample = FUNC8(pStmt,4);
    nSample = FUNC9(pStmt,4);
    for(j=0; j<nSample; j++) FUNC5("%02x", aSample[j]);
    FUNC5("'\n          ");
    zSep = " ";
    x = FUNC1(aSample, &iVal);
    if( iVal<x || iVal>nSample ){
      FUNC5(" <error>\n");
      continue;
    }
    y = mxHdr = (int)iVal;
    while( x<mxHdr ){
      int sz;
      i64 v;
      x += FUNC1(aSample+x, &iVal);
      if( x>mxHdr ) break;
      if( iVal<0 ) break;
      switch( iVal ){
        case 0:  sz = 0;  break;
        case 1:  sz = 1;  break;
        case 2:  sz = 2;  break;
        case 3:  sz = 3;  break;
        case 4:  sz = 4;  break;
        case 5:  sz = 6;  break;
        case 6:  sz = 8;  break;
        case 7:  sz = 8;  break;
        case 8:  sz = 0;  break;
        case 9:  sz = 0;  break;
        case 10:
        case 11: sz = 0;  break;
        default: sz = (int)(iVal-12)/2;  break;
      }
      if( y+sz>nSample ) break;
      if( iVal==0 ){
        FUNC5("%sNULL", zSep);
      }else if( iVal==8 || iVal==9 ){
        FUNC5("%s%d", zSep, ((int)iVal)-8);
      }else if( iVal<=7 ){
        v = (signed char)aSample[y];
        for(j=1; j<sz; j++){
          v = (v<<8) + aSample[y+j];
        }
        if( iVal==7 ){
          double r;
          char *z;
          FUNC4(&r, &v, sizeof(r));
          z = FUNC14("%s%!.15g", zSep, r);
          FUNC5("%s", z);
          FUNC13(z);
        }else{
          FUNC5("%s%lld", zSep, v);
        }
      }else if( (iVal&1)==0 ){
        FUNC5("%sx'", zSep);
        for(j=0; j<sz; j++){
          FUNC5("%02x", aSample[y+j]);
        }
        FUNC5("'");
      }else{
        FUNC5("%s'", zSep);
        for(j=0; j<sz; j++){
          char c = (char)aSample[y+j];
          if( FUNC0(c) ){
            if( c=='\'' || c=='\\' ) FUNC6('\\');
            FUNC6(c);
          }else if( c=='\n' ){
            FUNC5("\\n");
          }else if( c=='\t' ){
            FUNC5("\\t");
          }else if( c=='\r' ){
            FUNC5("\\r");
          }else{
            FUNC5("\\%03o", c);
          }
        }
        FUNC5("'");
      }
      zSep = ",";
      y += sz;
    }
    FUNC5("\n");
  }
  FUNC13(zIdx);
  FUNC12(pStmt);
  FUNC7(db);
  return 0;
}