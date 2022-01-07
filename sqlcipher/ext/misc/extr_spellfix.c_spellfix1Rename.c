
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_2__ {char* zTableName; int zDbName; int * db; } ;
typedef TYPE_1__ spellfix1_vtab ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int spellfix1DbExec (int*,int *,char*,int ,char*,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;

__attribute__((used)) static int spellfix1Rename(sqlite3_vtab *pVTab, const char *zNew){
  spellfix1_vtab *p = (spellfix1_vtab*)pVTab;
  sqlite3 *db = p->db;
  int rc = SQLITE_OK;
  char *zNewName = sqlite3_mprintf("%s", zNew);
  if( zNewName==0 ){
    return SQLITE_NOMEM;
  }
  spellfix1DbExec(&rc, db,
     "ALTER TABLE \"%w\".\"%w_vocab\" RENAME TO \"%w_vocab\"",
     p->zDbName, p->zTableName, zNewName
  );
  if( rc==SQLITE_OK ){
    sqlite3_free(p->zTableName);
    p->zTableName = zNewName;
  }else{
    sqlite3_free(zNewName);
  }
  return rc;
}
