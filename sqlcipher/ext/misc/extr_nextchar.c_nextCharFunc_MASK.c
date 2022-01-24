#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {int nUsed; char* aResult; int /*<<< orphan*/  pStmt; scalar_t__ mallocFailed; int /*<<< orphan*/  db; void* zPrefix; int /*<<< orphan*/  nPrefix; } ;
typedef  TYPE_1__ nextCharContext ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 unsigned char* FUNC6 (int) ; 
 char* FUNC7 (char*,unsigned char const*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (unsigned char*,char) ; 

__attribute__((used)) static void FUNC15(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  nextCharContext c;
  const unsigned char *zTable = FUNC13(argv[1]);
  const unsigned char *zField = FUNC13(argv[2]);
  const unsigned char *zWhere;
  const unsigned char *zCollName;
  char *zWhereClause = 0;
  char *zColl = 0;
  char *zSql;
  int rc;

  FUNC1(&c, 0, sizeof(c));
  c.db = FUNC2(context);
  c.zPrefix = FUNC13(argv[0]);
  c.nPrefix = FUNC12(argv[0]);
  if( zTable==0 || zField==0 || c.zPrefix==0 ) return;
  if( argc>=4
   && (zWhere = FUNC13(argv[3]))!=0
   && zWhere[0]!=0
  ){
    zWhereClause = FUNC7("AND (%s)", zWhere);
    if( zWhereClause==0 ){
      FUNC10(context);
      return;
    }
  }else{
    zWhereClause = "";
  }
  if( argc>=5
   && (zCollName = FUNC13(argv[4]))!=0
   && zCollName[0]!=0 
  ){
    zColl = FUNC7("collate \"%w\"", zCollName);
    if( zColl==0 ){
      FUNC10(context);
      if( zWhereClause[0] ) FUNC5(zWhereClause);
      return;
    }
  }else{
    zColl = "";
  }
  zSql = FUNC7(
    "SELECT %s FROM %s"
    " WHERE %s>=(?1 || ?2) %s"
    "   AND %s<=(?1 || char(1114111)) %s" /* 1114111 == 0x10ffff */
    "   %s"
    " ORDER BY 1 %s ASC LIMIT 1",
    zField, zTable, zField, zColl, zField, zColl, zWhereClause, zColl
  );
  if( zWhereClause[0] ) FUNC5(zWhereClause);
  if( zColl[0] ) FUNC5(zColl);
  if( zSql==0 ){
    FUNC10(context);
    return;
  }

  rc = FUNC8(c.db, zSql, -1, &c.pStmt, 0);
  FUNC5(zSql);
  if( rc ){
    FUNC9(context, FUNC3(c.db), -1);
    return;
  }
  FUNC0(&c);
  if( c.mallocFailed ){
    FUNC10(context);
  }else{
    unsigned char *pRes;
    pRes = FUNC6( c.nUsed*4 + 1 );
    if( pRes==0 ){
      FUNC10(context);
    }else{
      int i;
      int n = 0;
      for(i=0; i<c.nUsed; i++){
        n += FUNC14(pRes+n, c.aResult[i]);
      }
      pRes[n] = 0;
      FUNC11(context, (const char*)pRes, n, sqlite3_free);
    }
  }
  FUNC4(c.pStmt);
  FUNC5(c.aResult);
}