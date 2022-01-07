
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int r ;
typedef int i64 ;


 scalar_t__ ISPRINT (char) ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int decodeVarint (unsigned char const*,int*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int memcpy (double*,int*,int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int sqlite3_close (int *) ;
 unsigned char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 char* sqlite3_column_text (int *,int) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_open (char*,int **) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;

int main(int argc, char **argv){
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
    fprintf(stderr, "Usage: %s DATABASE-FILE\n", argv[0]);
    exit(1);
  }
  rc = sqlite3_open(argv[1], &db);
  if( rc!=SQLITE_OK || db==0 ){
    fprintf(stderr, "Cannot open database file [%s]\n", argv[1]);
    exit(1);
  }
  rc = sqlite3_prepare_v2(db,
        "SELECT tbl||'.'||idx, nEq, nLT, nDLt, sample "
        "FROM sqlite_stat4 ORDER BY 1", -1,
        &pStmt, 0);
  if( rc!=SQLITE_OK || pStmt==0 ){
    fprintf(stderr, "%s\n", sqlite3_errmsg(db));
    sqlite3_close(db);
    exit(1);
  }
  while( SQLITE_ROW==sqlite3_step(pStmt) ){
    if( zIdx==0 || strcmp(zIdx, (const char*)sqlite3_column_text(pStmt,0))!=0 ){
      if( zIdx ) printf("\n**************************************"
                        "**************\n\n");
      sqlite3_free(zIdx);
      zIdx = sqlite3_mprintf("%s", sqlite3_column_text(pStmt,0));
      iRow = 0;
    }
    printf("%s sample %d ------------------------------------\n", zIdx, ++iRow);
    printf("  nEq    = %s\n", sqlite3_column_text(pStmt,1));
    printf("  nLt    = %s\n", sqlite3_column_text(pStmt,2));
    printf("  nDLt   = %s\n", sqlite3_column_text(pStmt,3));
    printf("  sample = x'");
    aSample = sqlite3_column_blob(pStmt,4);
    nSample = sqlite3_column_bytes(pStmt,4);
    for(j=0; j<nSample; j++) printf("%02x", aSample[j]);
    printf("'\n          ");
    zSep = " ";
    x = decodeVarint(aSample, &iVal);
    if( iVal<x || iVal>nSample ){
      printf(" <error>\n");
      continue;
    }
    y = mxHdr = (int)iVal;
    while( x<mxHdr ){
      int sz;
      i64 v;
      x += decodeVarint(aSample+x, &iVal);
      if( x>mxHdr ) break;
      if( iVal<0 ) break;
      switch( iVal ){
        case 0: sz = 0; break;
        case 1: sz = 1; break;
        case 2: sz = 2; break;
        case 3: sz = 3; break;
        case 4: sz = 4; break;
        case 5: sz = 6; break;
        case 6: sz = 8; break;
        case 7: sz = 8; break;
        case 8: sz = 0; break;
        case 9: sz = 0; break;
        case 10:
        case 11: sz = 0; break;
        default: sz = (int)(iVal-12)/2; break;
      }
      if( y+sz>nSample ) break;
      if( iVal==0 ){
        printf("%sNULL", zSep);
      }else if( iVal==8 || iVal==9 ){
        printf("%s%d", zSep, ((int)iVal)-8);
      }else if( iVal<=7 ){
        v = (signed char)aSample[y];
        for(j=1; j<sz; j++){
          v = (v<<8) + aSample[y+j];
        }
        if( iVal==7 ){
          double r;
          char *z;
          memcpy(&r, &v, sizeof(r));
          z = sqlite3_mprintf("%s%!.15g", zSep, r);
          printf("%s", z);
          sqlite3_free(z);
        }else{
          printf("%s%lld", zSep, v);
        }
      }else if( (iVal&1)==0 ){
        printf("%sx'", zSep);
        for(j=0; j<sz; j++){
          printf("%02x", aSample[y+j]);
        }
        printf("'");
      }else{
        printf("%s'", zSep);
        for(j=0; j<sz; j++){
          char c = (char)aSample[y+j];
          if( ISPRINT(c) ){
            if( c=='\'' || c=='\\' ) putchar('\\');
            putchar(c);
          }else if( c=='\n' ){
            printf("\\n");
          }else if( c=='\t' ){
            printf("\\t");
          }else if( c=='\r' ){
            printf("\\r");
          }else{
            printf("\\%03o", c);
          }
        }
        printf("'");
      }
      zSep = ",";
      y += sz;
    }
    printf("\n");
  }
  sqlite3_free(zIdx);
  sqlite3_finalize(pStmt);
  sqlite3_close(db);
  return 0;
}
