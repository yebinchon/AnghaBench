
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_stmt ;
struct TYPE_8__ {int bSchemaPK; } ;
struct TYPE_7__ {char* z; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ Str ;
typedef int FILE ;


 scalar_t__ SQLITE_BLOB ;
 scalar_t__ SQLITE_INTEGER ;
 scalar_t__ SQLITE_ROW ;
 int checkSchemasMatch (char const*) ;
 char** columnNames (char*,char const*,int*,int*) ;
 int * db_prepare (char*,char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_6__ g ;
 int getRbudiffQuery (char const*,char**,int,int,TYPE_1__*) ;
 int memcpy (char*,int ,int) ;
 int printQuoted (int *,int ) ;
 int rbuDeltaCreate (char const*,int,char const*,int,char*) ;
 int runtimeError (char*,char const*) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_text (int *,int) ;
 scalar_t__ sqlite3_column_type (int *,int) ;
 int sqlite3_column_value (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc (int) ;
 scalar_t__ sqlite3_step (int *) ;
 int strFree (TYPE_1__*) ;
 int strPrintf (TYPE_1__*,char*,...) ;
 int strPrintfArray (TYPE_1__*,char*,char*,char**,int) ;

__attribute__((used)) static void rbudiff_one_table(const char *zTab, FILE *out){
  int bOtaRowid;
  int nPK;
  char **azCol;
  int i;
  int nCol;
  Str ct = {0, 0, 0};
  Str sql = {0, 0, 0};
  Str insert = {0, 0, 0};
  sqlite3_stmt *pStmt = 0;
  int nRow = 0;


  g.bSchemaPK = 1;


  checkSchemasMatch(zTab);



  azCol = columnNames("main", zTab, &nPK, &bOtaRowid);
  if( azCol==0 ){
    runtimeError("table %s has no usable PK columns", zTab);
  }
  for(nCol=0; azCol[nCol]; nCol++);


  strPrintf(&ct, "CREATE TABLE IF NOT EXISTS 'data_%q'(", zTab);
  if( bOtaRowid ) strPrintf(&ct, "rbu_rowid, ");
  strPrintfArray(&ct, ", ", "%s", &azCol[bOtaRowid], -1);
  strPrintf(&ct, ", rbu_control);");


  getRbudiffQuery(zTab, azCol, nPK, bOtaRowid, &sql);



  strPrintf(&insert, "INSERT INTO 'data_%q' (", zTab);
  if( bOtaRowid ) strPrintf(&insert, "rbu_rowid, ");
  strPrintfArray(&insert, ", ", "%s", &azCol[bOtaRowid], -1);
  strPrintf(&insert, ", rbu_control) VALUES(");

  pStmt = db_prepare("%s", sql.z);

  while( sqlite3_step(pStmt)==SQLITE_ROW ){




    if( ct.z ){
      fprintf(out, "%s\n", ct.z);
      strFree(&ct);
    }


    fprintf(out, "%s", insert.z);
    nRow++;

    if( sqlite3_column_type(pStmt, nCol)==SQLITE_INTEGER ){
      for(i=0; i<=nCol; i++){
        if( i>0 ) fprintf(out, ", ");
        printQuoted(out, sqlite3_column_value(pStmt, i));
      }
    }else{
      char *zOtaControl;
      int nOtaControl = sqlite3_column_bytes(pStmt, nCol);

      zOtaControl = (char*)sqlite3_malloc(nOtaControl+1);
      memcpy(zOtaControl, sqlite3_column_text(pStmt, nCol), nOtaControl+1);

      for(i=0; i<nCol; i++){
        int bDone = 0;
        if( i>=nPK
            && sqlite3_column_type(pStmt, i)==SQLITE_BLOB
            && sqlite3_column_type(pStmt, nCol+1+i)==SQLITE_BLOB
        ){
          const char *aSrc = sqlite3_column_blob(pStmt, nCol+1+i);
          int nSrc = sqlite3_column_bytes(pStmt, nCol+1+i);
          const char *aFinal = sqlite3_column_blob(pStmt, i);
          int nFinal = sqlite3_column_bytes(pStmt, i);
          char *aDelta;
          int nDelta;

          aDelta = sqlite3_malloc(nFinal + 60);
          nDelta = rbuDeltaCreate(aSrc, nSrc, aFinal, nFinal, aDelta);
          if( nDelta<nFinal ){
            int j;
            fprintf(out, "x'");
            for(j=0; j<nDelta; j++) fprintf(out, "%02x", (u8)aDelta[j]);
            fprintf(out, "'");
            zOtaControl[i-bOtaRowid] = 'f';
            bDone = 1;
          }
          sqlite3_free(aDelta);
        }

        if( bDone==0 ){
          printQuoted(out, sqlite3_column_value(pStmt, i));
        }
        fprintf(out, ", ");
      }
      fprintf(out, "'%s'", zOtaControl);
      sqlite3_free(zOtaControl);
    }


    fprintf(out, ");\n");
  }

  sqlite3_finalize(pStmt);
  if( nRow>0 ){
    Str cnt = {0, 0, 0};
    strPrintf(&cnt, "INSERT INTO rbu_count VALUES('data_%q', %d);", zTab, nRow);
    fprintf(out, "%s\n", cnt.z);
    strFree(&cnt);
  }

  strFree(&ct);
  strFree(&sql);
  strFree(&insert);
}
