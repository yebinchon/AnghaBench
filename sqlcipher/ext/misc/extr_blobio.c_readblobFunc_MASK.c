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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/  (*) (unsigned char*)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
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

  zSchema = (const char*)FUNC11(argv[0]);
  zTable = (const char*)FUNC11(argv[1]);
  if( zTable==0 ){
    FUNC7(context, "bad table name", -1);
    return;
  }
  zColumn = (const char*)FUNC11(argv[2]);
  if( zTable==0 ){
    FUNC7(context, "bad column name", -1);
    return;
  }
  iRowid = FUNC10(argv[3]);
  iOfst = FUNC9(argv[4]);
  nData = FUNC9(argv[5]);
  if( nData<=0 ) return;
  aData = FUNC5( nData+1 );
  if( aData==0 ){
    FUNC8(context);
    return;
  }
  db = FUNC3(context);
  rc = FUNC1(db, zSchema, zTable, zColumn, iRowid, 0, &pBlob);
  if( rc ){
    FUNC4(aData);
    FUNC7(context, "cannot open BLOB pointer", -1);
    return;
  }
  rc = FUNC2(pBlob, aData, nData, iOfst);
  FUNC0(pBlob);
  if( rc ){
    FUNC4(aData);
    FUNC7(context, "BLOB write failed", -1);
  }else{
    FUNC6(context, aData, nData, sqlite3_free);
  }
}