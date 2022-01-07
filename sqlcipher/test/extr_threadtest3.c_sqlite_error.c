
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int zErr; int rc; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int sqlite3_errcode (int ) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_extended_errcode (int ) ;
 int sqlite3_mprintf (char*,char const*,int ,int ) ;

__attribute__((used)) static void sqlite_error(
  Error *pErr,
  Sqlite *pDb,
  const char *zFunc
){
  pErr->rc = sqlite3_errcode(pDb->db);
  pErr->zErr = sqlite3_mprintf(
      "sqlite3_%s() - %s (%d)", zFunc, sqlite3_errmsg(pDb->db),
      sqlite3_extended_errcode(pDb->db)
  );
}
