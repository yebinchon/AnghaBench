
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pErr; int errCode; int bBenignMalloc; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {int rc; int zErrMsg; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 int SQLITE_TRANSIENT ;
 int SQLITE_UTF8 ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 scalar_t__ sqlite3ValueNew (TYPE_1__*) ;
 int sqlite3ValueSetNull (scalar_t__) ;
 int sqlite3ValueSetStr (scalar_t__,int,int ,int ,int ) ;

int sqlite3VdbeTransferError(Vdbe *p){
  sqlite3 *db = p->db;
  int rc = p->rc;
  if( p->zErrMsg ){
    db->bBenignMalloc++;
    sqlite3BeginBenignMalloc();
    if( db->pErr==0 ) db->pErr = sqlite3ValueNew(db);
    sqlite3ValueSetStr(db->pErr, -1, p->zErrMsg, SQLITE_UTF8, SQLITE_TRANSIENT);
    sqlite3EndBenignMalloc();
    db->bBenignMalloc--;
  }else if( db->pErr ){
    sqlite3ValueSetNull(db->pErr);
  }
  db->errCode = rc;
  return rc;
}
