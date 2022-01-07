
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_uint64 ;
typedef int sqlite3_stmt ;
typedef int r ;
struct TYPE_10__ {int writableSchema; int rc; int pArg; int (* xCallback ) (char*,int ) ;int nErr; int db; } ;
struct TYPE_9__ {char* z; } ;
typedef TYPE_1__ DText ;
typedef TYPE_2__ DState ;






 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;

 int appendText (TYPE_1__*,char const*,int ) ;
 int freeColumnList (char**) ;
 int freeText (TYPE_1__*) ;
 int initText (TYPE_1__*) ;
 int memcpy (int*,double*,int) ;
 int output_formatted (TYPE_2__*,char*,...) ;
 int output_quoted_escaped_string (TYPE_2__*,char const*) ;
 int quoteChar (char const*) ;
 scalar_t__ sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 double sqlite3_column_double (int *,int) ;
 double sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strglob (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stub1 (char*,int ) ;
 int stub10 (char*,int ) ;
 int stub11 (char*,int ) ;
 int stub12 (char*,int ) ;
 int stub13 (char*,int ) ;
 int stub14 (char*,int ) ;
 int stub15 (char*,int ) ;
 int stub16 (char*,int ) ;
 int stub2 (char*,int ) ;
 int stub3 (char*,int ) ;
 int stub4 (char*,int ) ;
 int stub5 (char const*,int ) ;
 int stub6 (char const*,int ) ;
 int stub7 (char*,int ) ;
 int stub8 (char*,int ) ;
 int stub9 (char*,int ) ;
 char** tableColumnList (TYPE_2__*,char const*) ;

__attribute__((used)) static int dump_callback(void *pArg, int nArg, char **azArg, char **azCol){
  int rc;
  const char *zTable;
  const char *zType;
  const char *zSql;
  DState *p = (DState*)pArg;
  sqlite3_stmt *pStmt;

  (void)azCol;
  if( nArg!=3 ) return 1;
  zTable = azArg[0];
  zType = azArg[1];
  zSql = azArg[2];

  if( strcmp(zTable, "sqlite_sequence")==0 ){
    p->xCallback("DELETE FROM sqlite_sequence;\n", p->pArg);
  }else if( sqlite3_strglob("sqlite_stat?", zTable)==0 ){
    p->xCallback("ANALYZE sqlite_master;\n", p->pArg);
  }else if( strncmp(zTable, "sqlite_", 7)==0 ){
    return 0;
  }else if( strncmp(zSql, "CREATE VIRTUAL TABLE", 20)==0 ){
    if( !p->writableSchema ){
      p->xCallback("PRAGMA writable_schema=ON;\n", p->pArg);
      p->writableSchema = 1;
    }
    output_formatted(p,
       "INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)"
       "VALUES('table','%q','%q',0,'%q');",
       zTable, zTable, zSql);
    return 0;
  }else{
    if( sqlite3_strglob("CREATE TABLE ['\"]*", zSql)==0 ){
      p->xCallback("CREATE TABLE IF NOT EXISTS ", p->pArg);
      p->xCallback(zSql+13, p->pArg);
    }else{
      p->xCallback(zSql, p->pArg);
    }
    p->xCallback(";\n", p->pArg);
  }

  if( strcmp(zType, "table")==0 ){
    DText sSelect;
    DText sTable;
    char **azTCol;
    int i;
    int nCol;

    azTCol = tableColumnList(p, zTable);
    if( azTCol==0 ) return 0;

    initText(&sTable);
    appendText(&sTable, "INSERT INTO ", 0);



    appendText(&sTable, zTable, quoteChar(zTable));





    if( azTCol[0] ){
      appendText(&sTable, "(", 0);
      appendText(&sTable, azTCol[0], 0);
      for(i=1; azTCol[i]; i++){
        appendText(&sTable, ",", 0);
        appendText(&sTable, azTCol[i], quoteChar(azTCol[i]));
      }
      appendText(&sTable, ")", 0);
    }
    appendText(&sTable, " VALUES(", 0);


    initText(&sSelect);
    appendText(&sSelect, "SELECT ", 0);
    if( azTCol[0] ){
      appendText(&sSelect, azTCol[0], 0);
      appendText(&sSelect, ",", 0);
    }
    for(i=1; azTCol[i]; i++){
      appendText(&sSelect, azTCol[i], quoteChar(azTCol[i]));
      if( azTCol[i+1] ){
        appendText(&sSelect, ",", 0);
      }
    }
    nCol = i;
    if( azTCol[0]==0 ) nCol--;
    freeColumnList(azTCol);
    appendText(&sSelect, " FROM ", 0);
    appendText(&sSelect, zTable, quoteChar(zTable));

    rc = sqlite3_prepare_v2(p->db, sSelect.z, -1, &pStmt, 0);
    if( rc!=SQLITE_OK ){
      p->nErr++;
      if( p->rc==SQLITE_OK ) p->rc = rc;
    }else{
      while( SQLITE_ROW==sqlite3_step(pStmt) ){
        p->xCallback(sTable.z, p->pArg);
        for(i=0; i<nCol; i++){
          if( i ) p->xCallback(",", p->pArg);
          switch( sqlite3_column_type(pStmt,i) ){
            case 130: {
              output_formatted(p, "%lld", sqlite3_column_int64(pStmt,i));
              break;
            }
            case 131: {
              double r = sqlite3_column_double(pStmt,i);
              sqlite3_uint64 ur;
              memcpy(&ur,&r,sizeof(r));
              if( ur==0x7ff0000000000000LL ){
                p->xCallback("1e999", p->pArg);
              }else if( ur==0xfff0000000000000LL ){
                p->xCallback("-1e999", p->pArg);
              }else{
                output_formatted(p, "%!.20g", r);
              }
              break;
            }
            case 129: {
              p->xCallback("NULL", p->pArg);
              break;
            }
            case 128: {
              output_quoted_escaped_string(p,
                   (const char*)sqlite3_column_text(pStmt,i));
              break;
            }
            case 132: {
              int nByte = sqlite3_column_bytes(pStmt,i);
              unsigned char *a = (unsigned char*)sqlite3_column_blob(pStmt,i);
              int j;
              p->xCallback("x'", p->pArg);
              for(j=0; j<nByte; j++){
                char zWord[3];
                zWord[0] = "0123456789abcdef"[(a[j]>>4)&15];
                zWord[1] = "0123456789abcdef"[a[j]&15];
                zWord[2] = 0;
                p->xCallback(zWord, p->pArg);
              }
              p->xCallback("'", p->pArg);
              break;
            }
          }
        }
        p->xCallback(");\n", p->pArg);
      }
    }
    sqlite3_finalize(pStmt);
    freeText(&sTable);
    freeText(&sSelect);
  }
  return 0;
}
