
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t iPKey; int zName; TYPE_1__* aCol; } ;
typedef TYPE_2__ Table ;
struct TYPE_9__ {int db; } ;
struct TYPE_7__ {int zName; } ;
typedef TYPE_3__ Parse ;


 int P4_DYNAMIC ;
 int P5_ConstraintUnique ;
 int SQLITE_CONSTRAINT_PRIMARYKEY ;
 int SQLITE_CONSTRAINT_ROWID ;
 int sqlite3HaltConstraint (TYPE_3__*,int,int,char*,int ,int ) ;
 char* sqlite3MPrintf (int ,char*,int ,...) ;

void sqlite3RowidConstraint(
  Parse *pParse,
  int onError,
  Table *pTab
){
  char *zMsg;
  int rc;
  if( pTab->iPKey>=0 ){
    zMsg = sqlite3MPrintf(pParse->db, "%s.%s", pTab->zName,
                          pTab->aCol[pTab->iPKey].zName);
    rc = SQLITE_CONSTRAINT_PRIMARYKEY;
  }else{
    zMsg = sqlite3MPrintf(pParse->db, "%s.rowid", pTab->zName);
    rc = SQLITE_CONSTRAINT_ROWID;
  }
  sqlite3HaltConstraint(pParse, rc, onError, zMsg, P4_DYNAMIC,
                        P5_ConstraintUnique);
}
