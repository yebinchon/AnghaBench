
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_ROW ;
 int atoi (char*) ;
 int atoi64 (char*) ;
 char** azExtra ;
 int decodeDoclist (unsigned char const*,int) ;
 scalar_t__ findOption (char*,int ,int ) ;
 int * prepareToGetSegment (int *,char const*,char*) ;
 int printBlob (unsigned char const*,int) ;
 int printf (char*,char*,int,int) ;
 unsigned char* sqlite3_column_blob (int *,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void showDoclist(sqlite3 *db, const char *zTab){
  const unsigned char *aData;
  sqlite3_int64 offset;
  int nData;
  sqlite3_stmt *pStmt;

  offset = atoi64(azExtra[1]);
  nData = atoi(azExtra[2]);
  pStmt = prepareToGetSegment(db, zTab, azExtra[0]);
  if( sqlite3_step(pStmt)!=SQLITE_ROW ){
    sqlite3_finalize(pStmt);
    return;
  }
  aData = sqlite3_column_blob(pStmt, 0);
  printf("Doclist at %s offset %lld of size %d bytes:\n",
         azExtra[0], offset, nData);
  if( findOption("raw", 0, 0)!=0 ){
    printBlob(aData+offset, nData);
  }else{
    decodeDoclist(aData+offset, nData);
  }
  sqlite3_finalize(pStmt);
}
