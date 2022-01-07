
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vdbe ;
typedef int Token ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ Parse ;


 int OP_Savepoint ;
 int P4_DYNAMIC ;
 int SAVEPOINT_BEGIN ;
 int SAVEPOINT_RELEASE ;
 int SAVEPOINT_ROLLBACK ;
 int SQLITE_SAVEPOINT ;
 int assert (int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_1__*,int ,char const* const,char*,int ) ;
 int sqlite3DbFree (int ,char*) ;
 int * sqlite3GetVdbe (TYPE_1__*) ;
 char* sqlite3NameFromToken (int ,int *) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,char*,int ) ;

void sqlite3Savepoint(Parse *pParse, int op, Token *pName){
  char *zName = sqlite3NameFromToken(pParse->db, pName);
  if( zName ){
    Vdbe *v = sqlite3GetVdbe(pParse);

    static const char * const az[] = { "BEGIN", "RELEASE", "ROLLBACK" };
    assert( !SAVEPOINT_BEGIN && SAVEPOINT_RELEASE==1 && SAVEPOINT_ROLLBACK==2 );

    if( !v || sqlite3AuthCheck(pParse, SQLITE_SAVEPOINT, az[op], zName, 0) ){
      sqlite3DbFree(pParse->db, zName);
      return;
    }
    sqlite3VdbeAddOp4(v, OP_Savepoint, op, 0, 0, zName, P4_DYNAMIC);
  }
}
