
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {void* zErrMsg; } ;
typedef TYPE_1__ sqlite3_vtab ;
typedef int sqlite3_value ;
struct TYPE_5__ {int zSelf; } ;
typedef TYPE_2__ amatch_vtab ;


 int AMATCH_COL_COMMAND ;
 int AMATCH_COL_DISTANCE ;
 int AMATCH_COL_LANGUAGE ;
 int AMATCH_COL_WORD ;
 int SQLITE_ERROR ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 void* sqlite3_mprintf (char*,int ) ;
 unsigned char* sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int amatchUpdate(
  sqlite3_vtab *pVTab,
  int argc,
  sqlite3_value **argv,
  sqlite_int64 *pRowid
){
  amatch_vtab *p = (amatch_vtab*)pVTab;
  const unsigned char *zCmd;
  (void)pRowid;
  if( argc==1 ){
    pVTab->zErrMsg = sqlite3_mprintf("DELETE from %s is not allowed",
                                      p->zSelf);
    return SQLITE_ERROR;
  }
  if( sqlite3_value_type(argv[0])!=SQLITE_NULL ){
    pVTab->zErrMsg = sqlite3_mprintf("UPDATE of %s is not allowed",
                                      p->zSelf);
    return SQLITE_ERROR;
  }
  if( sqlite3_value_type(argv[2+AMATCH_COL_WORD])!=SQLITE_NULL
   || sqlite3_value_type(argv[2+AMATCH_COL_DISTANCE])!=SQLITE_NULL
   || sqlite3_value_type(argv[2+AMATCH_COL_LANGUAGE])!=SQLITE_NULL
  ){
    pVTab->zErrMsg = sqlite3_mprintf(
            "INSERT INTO %s allowed for column [command] only", p->zSelf);
    return SQLITE_ERROR;
  }
  zCmd = sqlite3_value_text(argv[2+AMATCH_COL_COMMAND]);
  if( zCmd==0 ) return SQLITE_OK;

  return SQLITE_OK;
}
