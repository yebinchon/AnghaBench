
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_4__ {char* zDbName; scalar_t__ zTableName; scalar_t__ zCostTable; int base; int * db; } ;
typedef TYPE_1__ spellfix1_vtab ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int spellfix1DbExec (int*,int *,char*,char const*,char const*,...) ;
 scalar_t__ spellfix1Dequote (char const*) ;
 int spellfix1Uninit (int ,int *) ;
 int sqlite3_declare_vtab (int *,char*) ;
 TYPE_1__* sqlite3_malloc64 (int) ;
 void* sqlite3_mprintf (char*,char const* const) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const* const,char*,int) ;

__attribute__((used)) static int spellfix1Init(
  int isCreate,
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  spellfix1_vtab *pNew = 0;

  const char *zDbName = argv[1];
  const char *zTableName = argv[2];
  int nDbName;
  int rc = SQLITE_OK;
  int i;

  nDbName = (int)strlen(zDbName);
  pNew = sqlite3_malloc64( sizeof(*pNew) + nDbName + 1);
  if( pNew==0 ){
    rc = SQLITE_NOMEM;
  }else{
    memset(pNew, 0, sizeof(*pNew));
    pNew->zDbName = (char*)&pNew[1];
    memcpy(pNew->zDbName, zDbName, nDbName+1);
    pNew->zTableName = sqlite3_mprintf("%s", zTableName);
    pNew->db = db;
    if( pNew->zTableName==0 ){
      rc = SQLITE_NOMEM;
    }else{
      rc = sqlite3_declare_vtab(db,
           "CREATE TABLE x(word,rank,distance,langid, "
           "score, matchlen, phonehash HIDDEN, "
           "top HIDDEN, scope HIDDEN, srchcnt HIDDEN, "
           "soundslike HIDDEN, command HIDDEN)"
      );
    }
    if( rc==SQLITE_OK && isCreate ){
      spellfix1DbExec(&rc, db,
         "CREATE TABLE IF NOT EXISTS \"%w\".\"%w_vocab\"(\n"
         "  id INTEGER PRIMARY KEY,\n"
         "  rank INT,\n"
         "  langid INT,\n"
         "  word TEXT,\n"
         "  k1 TEXT,\n"
         "  k2 TEXT\n"
         ");\n",
         zDbName, zTableName
      );
      spellfix1DbExec(&rc, db,
         "CREATE INDEX IF NOT EXISTS \"%w\".\"%w_vocab_index_langid_k2\" "
            "ON \"%w_vocab\"(langid,k2);",
         zDbName, zTableName, zTableName
      );
    }
    for(i=3; rc==SQLITE_OK && i<argc; i++){
      if( strncmp(argv[i],"edit_cost_table=",16)==0 && pNew->zCostTable==0 ){
        pNew->zCostTable = spellfix1Dequote(&argv[i][16]);
        if( pNew->zCostTable==0 ) rc = SQLITE_NOMEM;
        continue;
      }
      *pzErr = sqlite3_mprintf("bad argument to spellfix1(): \"%s\"", argv[i]);
      rc = SQLITE_ERROR;
    }
  }

  if( rc && pNew ){
    *ppVTab = 0;
    spellfix1Uninit(0, &pNew->base);
  }else{
    *ppVTab = (sqlite3_vtab *)pNew;
  }
  return rc;
}
