#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_11__ {int (* xCreate ) (int,char const* const*,TYPE_4__**) ;} ;
typedef  TYPE_1__ sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_12__ {int /*<<< orphan*/  base; struct TYPE_12__* pFulltextStatements; scalar_t__ azColumn; int /*<<< orphan*/  nColumn; TYPE_4__* pTokenizer; scalar_t__ azContentColumn; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ fulltext_vtab ;
struct TYPE_13__ {scalar_t__* azTokenizer; int /*<<< orphan*/  zName; scalar_t__ azColumn; scalar_t__ azContentColumn; int /*<<< orphan*/  nColumn; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_3__ TableSpec ;
struct TYPE_14__ {TYPE_1__ const* pModule; } ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const**) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 int FUNC11 (int,char const* const*,TYPE_4__**) ; 
 int FUNC12 (int,char const* const*,TYPE_4__**) ; 

__attribute__((used)) static int FUNC13(
  sqlite3 *db,              /* The SQLite database connection */
  TableSpec *spec,          /* Parsed spec information from parseSpec() */
  sqlite3_vtab **ppVTab,    /* Write the resulting vtab structure here */
  char **pzErr              /* Write any error message here */
){
  int rc;
  int n;
  fulltext_vtab *v = 0;
  const sqlite3_tokenizer_module *m = NULL;
  char *schema;

  v = (fulltext_vtab *) FUNC3(sizeof(fulltext_vtab));
  if( v==0 ) return SQLITE_NOMEM;
  FUNC4(v, 0, sizeof(*v));
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
  /* TODO(shess) For now, add new tokenizers as else if clauses. */
  if( spec->azTokenizer[0]==0 || FUNC10(spec->azTokenizer[0], "simple") ){
    FUNC6(&m);
  }else if( FUNC10(spec->azTokenizer[0], "porter") ){
    FUNC5(&m);
  }else{
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

  schema = FUNC1(v->nColumn, (const char*const*)v->azColumn,
                          spec->zName);
  rc = FUNC7(db, schema);
  FUNC8(schema);
  if( rc!=SQLITE_OK ) goto err;

  FUNC4(v->pFulltextStatements, 0, sizeof(v->pFulltextStatements));

  *ppVTab = &v->base;
  FUNC0(("FTS1 Connect %p\n", v));

  return rc;

err:
  FUNC2(v);
  return rc;
}