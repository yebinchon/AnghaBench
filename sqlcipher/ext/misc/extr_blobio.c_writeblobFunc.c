
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int sqlite3_blob ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_BLOB ;
 int sqlite3_blob_close (int *) ;
 int sqlite3_blob_open (int *,char const*,char const*,char const*,int ,int,int **) ;
 int sqlite3_blob_write (int *,unsigned char*,int,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void writeblobFunc(
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

  zSchema = (const char*)sqlite3_value_text(argv[0]);
  zTable = (const char*)sqlite3_value_text(argv[1]);
  if( zTable==0 ){
    sqlite3_result_error(context, "bad table name", -1);
    return;
  }
  zColumn = (const char*)sqlite3_value_text(argv[2]);
  if( zTable==0 ){
    sqlite3_result_error(context, "bad column name", -1);
    return;
  }
  iRowid = sqlite3_value_int64(argv[3]);
  iOfst = sqlite3_value_int(argv[4]);
  if( sqlite3_value_type(argv[5])!=SQLITE_BLOB ){
    sqlite3_result_error(context, "6th argument must be a BLOB", -1);
    return;
  }
  nData = sqlite3_value_bytes(argv[5]);
  aData = (unsigned char *)sqlite3_value_blob(argv[5]);
  db = sqlite3_context_db_handle(context);
  rc = sqlite3_blob_open(db, zSchema, zTable, zColumn, iRowid, 1, &pBlob);
  if( rc ){
    sqlite3_result_error(context, "cannot open BLOB pointer", -1);
    return;
  }
  rc = sqlite3_blob_write(pBlob, aData, nData, iOfst);
  sqlite3_blob_close(pBlob);
  if( rc ){
    sqlite3_result_error(context, "BLOB write failed", -1);
  }
}
