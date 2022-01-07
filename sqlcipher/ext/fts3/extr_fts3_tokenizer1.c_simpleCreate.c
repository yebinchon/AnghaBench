
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_tokenizer ;
struct TYPE_4__ {int* delim; int base; } ;
typedef TYPE_1__ simple_tokenizer ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts3_isalnum (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ strlen (char const* const) ;

__attribute__((used)) static int simpleCreate(
  int argc, const char * const *argv,
  sqlite3_tokenizer **ppTokenizer
){
  simple_tokenizer *t;

  t = (simple_tokenizer *) sqlite3_malloc(sizeof(*t));
  if( t==((void*)0) ) return SQLITE_NOMEM;
  memset(t, 0, sizeof(*t));






  if( argc>1 ){
    int i, n = (int)strlen(argv[1]);
    for(i=0; i<n; i++){
      unsigned char ch = argv[1][i];

      if( ch>=0x80 ){
        sqlite3_free(t);
        return SQLITE_ERROR;
      }
      t->delim[ch] = 1;
    }
  } else {

    int i;
    for(i=1; i<0x80; i++){
      t->delim[i] = !fts3_isalnum(i) ? -1 : 0;
    }
  }

  *ppTokenizer = &t->base;
  return SQLITE_OK;
}
