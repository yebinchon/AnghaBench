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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3_blob ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_blob *pBlob = 0;
  const char *zSchema;
  const char *zTable;
  const char *zColumn;
  sqlite3_int64 iRowid;
  int iOfst;
  unsigned char *aData;
  int nData;
  sqlite3 *db;
  int rc;

  zSchema = (const char*)FUNC9(argv[0]);
  zTable = (const char*)FUNC9(argv[1]);
  if( zTable==0 ){
    FUNC4(context, "bad table name", -1);
    return;
  }
  zColumn = (const char*)FUNC9(argv[2]);
  if( zTable==0 ){
    FUNC4(context, "bad column name", -1);
    return;
  }
  iRowid = FUNC8(argv[3]);
  iOfst = FUNC7(argv[4]);
  if( FUNC10(argv[5])!=SQLITE_BLOB ){
    FUNC4(context, "6th argument must be a BLOB", -1);
    return;
  }
  nData = FUNC6(argv[5]);
  aData = (unsigned char *)FUNC5(argv[5]);
  db = FUNC3(context);
  rc = FUNC1(db, zSchema, zTable, zColumn, iRowid, 1, &pBlob);
  if( rc ){
    FUNC4(context, "cannot open BLOB pointer", -1);
    return;
  }
  rc = FUNC2(pBlob, aData, nData, iOfst);
  FUNC0(pBlob);
  if( rc ){
    FUNC4(context, "BLOB write failed", -1);
  }
}