
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zName; int zDb; int db; } ;
typedef TYPE_1__ Fts5Config ;


 int fts5ExecPrintf (int ,char**,char*,int ,int ,char const*,char const*,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,char const*,char*) ;

int sqlite3Fts5CreateTable(
  Fts5Config *pConfig,
  const char *zPost,
  const char *zDefn,
  int bWithout,
  char **pzErr
){
  int rc;
  char *zErr = 0;

  rc = fts5ExecPrintf(pConfig->db, &zErr, "CREATE TABLE %Q.'%q_%q'(%s)%s",
      pConfig->zDb, pConfig->zName, zPost, zDefn,

      bWithout?" WITHOUT ROWID":

      ""
  );
  if( zErr ){
    *pzErr = sqlite3_mprintf(
        "fts5: error creating shadow table %q_%s: %s",
        pConfig->zName, zPost, zErr
    );
    sqlite3_free(zErr);
  }

  return rc;
}
