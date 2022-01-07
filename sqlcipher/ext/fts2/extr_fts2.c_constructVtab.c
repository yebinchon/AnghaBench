
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_9__ {int (* xCreate ) (int,char const* const*,TYPE_4__**) ;} ;
typedef TYPE_1__ sqlite3_tokenizer_module ;
typedef int sqlite3 ;
struct TYPE_10__ {int nPendingData; int base; int pFulltextStatements; scalar_t__ azColumn; int nColumn; TYPE_4__* pTokenizer; scalar_t__ azContentColumn; int zName; int zDb; int * db; } ;
typedef TYPE_2__ fulltext_vtab ;
typedef int fts2Hash ;
struct TYPE_11__ {char** azTokenizer; int zName; scalar_t__ azColumn; scalar_t__ azContentColumn; int nColumn; int zDb; } ;
typedef TYPE_3__ TableSpec ;
struct TYPE_12__ {TYPE_1__ const* pModule; } ;


 int CLEAR (TYPE_2__*) ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TRACE (char*) ;
 char* fulltextSchema (int ,char const* const*,int ) ;
 int fulltext_vtab_destroy (TYPE_2__*) ;
 int memset (int ,int ,int) ;
 scalar_t__ sqlite3Fts2HashFind (int *,char const*,int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_malloc (int) ;
 char* sqlite3_mprintf (char*,char*) ;
 int strlen (char const*) ;
 int stub1 (int,char const* const*,TYPE_4__**) ;
 int stub2 (int,char const* const*,TYPE_4__**) ;

__attribute__((used)) static int constructVtab(
  sqlite3 *db,
  fts2Hash *pHash,
  TableSpec *spec,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  int rc;
  int n;
  fulltext_vtab *v = 0;
  const sqlite3_tokenizer_module *m = ((void*)0);
  char *schema;

  char const *zTok;
  int nTok;

  v = (fulltext_vtab *) sqlite3_malloc(sizeof(fulltext_vtab));
  if( v==0 ) return SQLITE_NOMEM;
  CLEAR(v);

  v->db = db;
  v->zDb = spec->zDb;
  v->zName = spec->zName;
  v->nColumn = spec->nColumn;
  v->azContentColumn = spec->azContentColumn;
  spec->azContentColumn = 0;
  v->azColumn = spec->azColumn;
  spec->azColumn = 0;

  if( spec->azTokenizer==0 ){
    return SQLITE_NOMEM;
  }

  zTok = spec->azTokenizer[0];
  if( !zTok ){
    zTok = "simple";
  }
  nTok = strlen(zTok)+1;

  m = (sqlite3_tokenizer_module *)sqlite3Fts2HashFind(pHash, zTok, nTok);
  if( !m ){
    *pzErr = sqlite3_mprintf("unknown tokenizer: %s", spec->azTokenizer[0]);
    rc = SQLITE_ERROR;
    goto err;
  }

  for(n=0; spec->azTokenizer[n]; n++){}
  if( n ){
    rc = m->xCreate(n-1, (const char*const*)&spec->azTokenizer[1],
                    &v->pTokenizer);
  }else{
    rc = m->xCreate(0, 0, &v->pTokenizer);
  }
  if( rc!=SQLITE_OK ) goto err;
  v->pTokenizer->pModule = m;



  schema = fulltextSchema(v->nColumn, (const char*const*)v->azColumn,
                          spec->zName);
  rc = sqlite3_declare_vtab(db, schema);
  sqlite3_free(schema);
  if( rc!=SQLITE_OK ) goto err;

  memset(v->pFulltextStatements, 0, sizeof(v->pFulltextStatements));


  v->nPendingData = -1;

  *ppVTab = &v->base;
  TRACE(("FTS2 Connect %p\n", v));

  return rc;

err:
  fulltext_vtab_destroy(v);
  return rc;
}
