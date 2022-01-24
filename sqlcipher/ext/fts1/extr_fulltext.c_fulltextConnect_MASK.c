#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_5__ {int (* xCreate ) (int,char const**,TYPE_3__**) ;} ;
typedef  TYPE_1__ sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {int /*<<< orphan*/  base; int /*<<< orphan*/  pFulltextStatements; TYPE_3__* pTokenizer; int /*<<< orphan*/  zName; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ fulltext_vtab ;
struct TYPE_7__ {TYPE_1__* pModule; } ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const* const) ; 
 int FUNC7 (int,char const**,TYPE_3__**) ; 

__attribute__((used)) static int FUNC8(
  sqlite3 *db,
  void *pAux,
  int argc,
  const char * const *argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  int rc;
  fulltext_vtab *v;
  sqlite3_tokenizer_module *m = NULL;

  FUNC0( argc>=3 );
  v = (fulltext_vtab *) FUNC2(sizeof(fulltext_vtab));
  /* sqlite will initialize v->base */
  v->db = db;
  v->zName = FUNC6(argv[2]);
  v->pTokenizer = NULL;

  if( argc==3 ){
    FUNC1(&m);
  } else {
    /* TODO(shess) For now, add new tokenizers as else if clauses. */
    if( !FUNC5(argv[3], "simple") ){
      FUNC1(&m);
    } else {
      FUNC0( "unrecognized tokenizer"==NULL );
    }
  }

  /* TODO(shess) Since tokenization impacts the index, the parameters
  ** to the tokenizer need to be identical when a persistent virtual
  ** table is re-created.  One solution would be a meta-table to track
  ** such information in the database.  Then we could verify that the
  ** information is identical on subsequent creates.
  */
  /* TODO(shess) Why isn't argv already (const char **)? */
  rc = m->xCreate(argc-3, (const char **) (argv+3), &v->pTokenizer);
  if( rc!=SQLITE_OK ) return rc;
  v->pTokenizer->pModule = m;

  /* TODO: verify the existence of backing tables foo_content, foo_term */

  rc = FUNC4(db, "create table x(content text)");
  if( rc!=SQLITE_OK ) return rc;

  FUNC3(v->pFulltextStatements, 0, sizeof(v->pFulltextStatements));

  *ppVTab = &v->base;
  return SQLITE_OK;
}