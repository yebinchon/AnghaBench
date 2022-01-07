
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bHasStat; int zDb; int db; int zName; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite3_table_column_metadata (int ,int ,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int fts3SetHasStat(Fts3Table *p){
  int rc = SQLITE_OK;
  if( p->bHasStat==2 ){
    char *zTbl = sqlite3_mprintf("%s_stat", p->zName);
    if( zTbl ){
      int res = sqlite3_table_column_metadata(p->db, p->zDb, zTbl, 0,0,0,0,0,0);
      sqlite3_free(zTbl);
      p->bHasStat = (res==SQLITE_OK);
    }else{
      rc = SQLITE_NOMEM;
    }
  }
  return rc;
}
