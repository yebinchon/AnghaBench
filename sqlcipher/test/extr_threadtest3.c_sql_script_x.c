
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rc; int zErr; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ sqlite3_exec (int ,char const*,int ,int ,int *) ;

__attribute__((used)) static void sql_script_x(
  Error *pErr,
  Sqlite *pDb,
  const char *zSql
){
  if( pErr->rc==SQLITE_OK ){
    pErr->rc = sqlite3_exec(pDb->db, zSql, 0, 0, &pErr->zErr);
  }
}
