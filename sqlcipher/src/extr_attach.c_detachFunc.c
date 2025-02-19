
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zErr ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_5__ {int nDb; TYPE_2__* aDb; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {scalar_t__ pBt; scalar_t__ pSchema; int zDbSName; } ;
typedef TYPE_2__ Db ;


 int UNUSED_PARAMETER (int) ;
 int sqlite3BtreeClose (scalar_t__) ;
 scalar_t__ sqlite3BtreeIsInBackup (scalar_t__) ;
 scalar_t__ sqlite3BtreeIsInReadTrans (scalar_t__) ;
 int sqlite3CollapseDatabaseArray (TYPE_1__*) ;
 scalar_t__ sqlite3StrICmp (int ,char const*) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void detachFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  const char *zName = (const char *)sqlite3_value_text(argv[0]);
  sqlite3 *db = sqlite3_context_db_handle(context);
  int i;
  Db *pDb = 0;
  char zErr[128];

  UNUSED_PARAMETER(NotUsed);

  if( zName==0 ) zName = "";
  for(i=0; i<db->nDb; i++){
    pDb = &db->aDb[i];
    if( pDb->pBt==0 ) continue;
    if( sqlite3StrICmp(pDb->zDbSName, zName)==0 ) break;
  }

  if( i>=db->nDb ){
    sqlite3_snprintf(sizeof(zErr),zErr, "no such database: %s", zName);
    goto detach_error;
  }
  if( i<2 ){
    sqlite3_snprintf(sizeof(zErr),zErr, "cannot detach database %s", zName);
    goto detach_error;
  }
  if( sqlite3BtreeIsInReadTrans(pDb->pBt) || sqlite3BtreeIsInBackup(pDb->pBt) ){
    sqlite3_snprintf(sizeof(zErr),zErr, "database %s is locked", zName);
    goto detach_error;
  }

  sqlite3BtreeClose(pDb->pBt);
  pDb->pBt = 0;
  pDb->pSchema = 0;
  sqlite3CollapseDatabaseArray(db);
  return;

detach_error:
  sqlite3_result_error(context, zErr, -1);
}
