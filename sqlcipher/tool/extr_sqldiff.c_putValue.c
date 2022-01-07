
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef int sqlite3_stmt ;
typedef double sqlite3_int64 ;
typedef int FILE ;







 int fwrite (int ,int,size_t,int *) ;
 int memcpy (int*,double*,int) ;
 int putc (int,int *) ;
 int putsVarint (int *,int) ;
 int sqlite3_column_blob (int *,int) ;
 double sqlite3_column_bytes (int *,int) ;
 double sqlite3_column_double (int *,int) ;
 double sqlite3_column_int64 (int *,int) ;
 int sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;

__attribute__((used)) static void putValue(FILE *out, sqlite3_stmt *pStmt, int k){
  int iDType = sqlite3_column_type(pStmt, k);
  sqlite3_int64 iX;
  double rX;
  sqlite3_uint64 uX;
  int j;

  putc(iDType, out);
  switch( iDType ){
    case 130:
      iX = sqlite3_column_int64(pStmt, k);
      memcpy(&uX, &iX, 8);
      for(j=56; j>=0; j-=8) putc((uX>>j)&0xff, out);
      break;
    case 131:
      rX = sqlite3_column_double(pStmt, k);
      memcpy(&uX, &rX, 8);
      for(j=56; j>=0; j-=8) putc((uX>>j)&0xff, out);
      break;
    case 128:
      iX = sqlite3_column_bytes(pStmt, k);
      putsVarint(out, (sqlite3_uint64)iX);
      fwrite(sqlite3_column_text(pStmt, k),1,(size_t)iX,out);
      break;
    case 132:
      iX = sqlite3_column_bytes(pStmt, k);
      putsVarint(out, (sqlite3_uint64)iX);
      fwrite(sqlite3_column_blob(pStmt, k),1,(size_t)iX,out);
      break;
    case 129:
      break;
  }
}
