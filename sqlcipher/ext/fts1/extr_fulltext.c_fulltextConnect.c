
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_5__ {int (* xCreate ) (int,char const**,TYPE_3__**) ;} ;
typedef TYPE_1__ sqlite3_tokenizer_module ;
typedef int sqlite3 ;
struct TYPE_6__ {int base; int pFulltextStatements; TYPE_3__* pTokenizer; int zName; int * db; } ;
typedef TYPE_2__ fulltext_vtab ;
struct TYPE_7__ {TYPE_1__* pModule; } ;


 int SQLITE_OK ;
 int assert (int) ;
 int get_simple_tokenizer_module (TYPE_1__**) ;
 scalar_t__ malloc (int) ;
 int memset (int ,int ,int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 int strcmp (char const* const,char*) ;
 int string_dup (char const* const) ;
 int stub1 (int,char const**,TYPE_3__**) ;

__attribute__((used)) static int fulltextConnect(
  sqlite3 *db,
  void *pAux,
  int argc,
  const char * const *argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  int rc;
  fulltext_vtab *v;
  sqlite3_tokenizer_module *m = ((void*)0);

  assert( argc>=3 );
  v = (fulltext_vtab *) malloc(sizeof(fulltext_vtab));

  v->db = db;
  v->zName = string_dup(argv[2]);
  v->pTokenizer = ((void*)0);

  if( argc==3 ){
    get_simple_tokenizer_module(&m);
  } else {

    if( !strcmp(argv[3], "simple") ){
      get_simple_tokenizer_module(&m);
    } else {
      assert( "unrecognized tokenizer"==((void*)0) );
    }
  }
  rc = m->xCreate(argc-3, (const char **) (argv+3), &v->pTokenizer);
  if( rc!=SQLITE_OK ) return rc;
  v->pTokenizer->pModule = m;



  rc = sqlite3_declare_vtab(db, "create table x(content text)");
  if( rc!=SQLITE_OK ) return rc;

  memset(v->pFulltextStatements, 0, sizeof(v->pFulltextStatements));

  *ppVTab = &v->base;
  return SQLITE_OK;
}
