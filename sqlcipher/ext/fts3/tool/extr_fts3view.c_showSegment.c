
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_ROW ;
 char** azExtra ;
 int decodeSegment (unsigned char const*,int) ;
 scalar_t__ findOption (char*,int ,int ) ;
 int * prepareToGetSegment (int *,char const*,char*) ;
 int printBlob (unsigned char const*,int) ;
 int printf (char*,char*,int) ;
 unsigned char* sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void showSegment(sqlite3 *db, const char *zTab){
  const unsigned char *aData;
  int nData;
  sqlite3_stmt *pStmt;

  pStmt = prepareToGetSegment(db, zTab, azExtra[0]);
  if( sqlite3_step(pStmt)!=SQLITE_ROW ){
    sqlite3_finalize(pStmt);
    return;
  }
  nData = sqlite3_column_bytes(pStmt, 0);
  aData = sqlite3_column_blob(pStmt, 0);
  printf("Segment %s of size %d bytes:\n", azExtra[0], nData);
  if( findOption("raw", 0, 0)!=0 ){
    printBlob(aData, nData);
  }else{
    decodeSegment(aData, nData);
  }
  sqlite3_finalize(pStmt);
}
