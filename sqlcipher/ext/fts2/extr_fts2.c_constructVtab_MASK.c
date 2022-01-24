#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_9__ {int (* xCreate ) (int,char const* const*,TYPE_4__**) ;} ;
typedef  TYPE_1__ sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_10__ {int nPendingData; int /*<<< orphan*/  base; int /*<<< orphan*/  pFulltextStatements; scalar_t__ azColumn; int /*<<< orphan*/  nColumn; TYPE_4__* pTokenizer; scalar_t__ azContentColumn; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ fulltext_vtab ;
typedef  int /*<<< orphan*/  fts2Hash ;
struct TYPE_11__ {char** azTokenizer; int /*<<< orphan*/  zName; scalar_t__ azColumn; scalar_t__ azContentColumn; int /*<<< orphan*/  nColumn; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_3__ TableSpec ;
struct TYPE_12__ {TYPE_1__ const* pModule; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 char* FUNC9 (char*,char*) ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (int,char const* const*,TYPE_4__**) ; 
 int FUNC12 (int,char const* const*,TYPE_4__**) ; 

__attribute__((used)) static int FUNC13(
  sqlite3 *db,              /* The SQLite database connection */
  fts2Hash *pHash,          /* Hash table containing tokenizers */
  TableSpec *spec,          /* Parsed spec information from parseSpec() */
  sqlite3_vtab **ppVTab,    /* Write the resulting vtab structure here */
  char **pzErr              /* Write any error message here */
){
  int rc;
  int n;
  fulltext_vtab *v = 0;
  const sqlite3_tokenizer_module *m = NULL;
  char *schema;

  char const *zTok;         /* Name of tokenizer to use for this fts table */
  int nTok;                 /* Length of zTok, including nul terminator */

  v = (fulltext_vtab *) FUNC8(sizeof(fulltext_vtab));
  if( v==0 ) return SQLITE_NOMEM;
  FUNC0(v);
  /* sqlite will initialize v->base */
  v->db = db;
  v->zDb = spec->zDb;       /* Freed when azColumn is freed */
  v->zName = spec->zName;   /* Freed when azColumn is freed */
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
  nTok = FUNC10(zTok)+1;

  m = (sqlite3_tokenizer_module *)FUNC5(pHash, zTok, nTok);
  if( !m ){
    *pzErr = FUNC9("unknown tokenizer: %s", spec->azTokenizer[0]);
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

  /* TODO: verify the existence of backing tables foo_content, foo_term */

  schema = FUNC2(v->nColumn, (const char*const*)v->azColumn,
                          spec->zName);
  rc = FUNC6(db, schema);
  FUNC7(schema);
  if( rc!=SQLITE_OK ) goto err;

  FUNC4(v->pFulltextStatements, 0, sizeof(v->pFulltextStatements));

  /* Indicate that the buffer is not live. */
  v->nPendingData = -1;

  *ppVTab = &v->base;
  FUNC1(("FTS2 Connect %p\n", v));

  return rc;

err:
  FUNC3(v);
  return rc;
}