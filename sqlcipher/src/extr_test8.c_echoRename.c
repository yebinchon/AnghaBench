
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int db; int * zTableName; int zThis; scalar_t__ isPattern; } ;
typedef TYPE_1__ echo_vtab ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ simulateVtabError (TYPE_1__*,char*) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int *,char const*,int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int echoRename(sqlite3_vtab *vtab, const char *zNewName){
  int rc = SQLITE_OK;
  echo_vtab *p = (echo_vtab *)vtab;

  if( simulateVtabError(p, "xRename") ){
    return SQLITE_ERROR;
  }

  if( p->isPattern ){
    int nThis = (int)strlen(p->zThis);
    char *zSql = sqlite3_mprintf("ALTER TABLE %s RENAME TO %s%s",
        p->zTableName, zNewName, &p->zTableName[nThis]
    );
    rc = sqlite3_exec(p->db, zSql, 0, 0, 0);
    sqlite3_free(zSql);
  }

  return rc;
}
