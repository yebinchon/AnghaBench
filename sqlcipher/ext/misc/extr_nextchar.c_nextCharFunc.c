
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {int nUsed; char* aResult; int pStmt; scalar_t__ mallocFailed; int db; void* zPrefix; int nPrefix; } ;
typedef TYPE_1__ nextCharContext ;
typedef int c ;


 int findNextChars (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_context_db_handle (int *) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (char*) ;
 unsigned char* sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,unsigned char const*,...) ;
 int sqlite3_prepare_v2 (int ,char*,int,int *,int ) ;
 int sqlite3_result_error (int *,int ,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char const*,int,int (*) (char*)) ;
 int sqlite3_value_bytes (int *) ;
 void* sqlite3_value_text (int *) ;
 scalar_t__ writeUtf8 (unsigned char*,char) ;

__attribute__((used)) static void nextCharFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  nextCharContext c;
  const unsigned char *zTable = sqlite3_value_text(argv[1]);
  const unsigned char *zField = sqlite3_value_text(argv[2]);
  const unsigned char *zWhere;
  const unsigned char *zCollName;
  char *zWhereClause = 0;
  char *zColl = 0;
  char *zSql;
  int rc;

  memset(&c, 0, sizeof(c));
  c.db = sqlite3_context_db_handle(context);
  c.zPrefix = sqlite3_value_text(argv[0]);
  c.nPrefix = sqlite3_value_bytes(argv[0]);
  if( zTable==0 || zField==0 || c.zPrefix==0 ) return;
  if( argc>=4
   && (zWhere = sqlite3_value_text(argv[3]))!=0
   && zWhere[0]!=0
  ){
    zWhereClause = sqlite3_mprintf("AND (%s)", zWhere);
    if( zWhereClause==0 ){
      sqlite3_result_error_nomem(context);
      return;
    }
  }else{
    zWhereClause = "";
  }
  if( argc>=5
   && (zCollName = sqlite3_value_text(argv[4]))!=0
   && zCollName[0]!=0
  ){
    zColl = sqlite3_mprintf("collate \"%w\"", zCollName);
    if( zColl==0 ){
      sqlite3_result_error_nomem(context);
      if( zWhereClause[0] ) sqlite3_free(zWhereClause);
      return;
    }
  }else{
    zColl = "";
  }
  zSql = sqlite3_mprintf(
    "SELECT %s FROM %s"
    " WHERE %s>=(?1 || ?2) %s"
    "   AND %s<=(?1 || char(1114111)) %s"
    "   %s"
    " ORDER BY 1 %s ASC LIMIT 1",
    zField, zTable, zField, zColl, zField, zColl, zWhereClause, zColl
  );
  if( zWhereClause[0] ) sqlite3_free(zWhereClause);
  if( zColl[0] ) sqlite3_free(zColl);
  if( zSql==0 ){
    sqlite3_result_error_nomem(context);
    return;
  }

  rc = sqlite3_prepare_v2(c.db, zSql, -1, &c.pStmt, 0);
  sqlite3_free(zSql);
  if( rc ){
    sqlite3_result_error(context, sqlite3_errmsg(c.db), -1);
    return;
  }
  findNextChars(&c);
  if( c.mallocFailed ){
    sqlite3_result_error_nomem(context);
  }else{
    unsigned char *pRes;
    pRes = sqlite3_malloc64( c.nUsed*4 + 1 );
    if( pRes==0 ){
      sqlite3_result_error_nomem(context);
    }else{
      int i;
      int n = 0;
      for(i=0; i<c.nUsed; i++){
        n += writeUtf8(pRes+n, c.aResult[i]);
      }
      pRes[n] = 0;
      sqlite3_result_text(context, (const char*)pRes, n, sqlite3_free);
    }
  }
  sqlite3_finalize(c.pStmt);
  sqlite3_free(c.aResult);
}
