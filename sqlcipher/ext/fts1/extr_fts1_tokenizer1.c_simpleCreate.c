
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_tokenizer ;
struct TYPE_3__ {int* delim; int base; } ;
typedef TYPE_1__ simple_tokenizer ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int isalnum (int) ;
 int strlen (char const* const) ;

__attribute__((used)) static int simpleCreate(
  int argc, const char * const *argv,
  sqlite3_tokenizer **ppTokenizer
){
  simple_tokenizer *t;

  t = (simple_tokenizer *) calloc(sizeof(*t), 1);
  if( t==((void*)0) ) return SQLITE_NOMEM;






  if( argc>1 ){
    int i, n = strlen(argv[1]);
    for(i=0; i<n; i++){
      unsigned char ch = argv[1][i];

      if( ch>=0x80 ){
        free(t);
        return SQLITE_ERROR;
      }
      t->delim[ch] = 1;
    }
  } else {

    int i;
    for(i=1; i<0x80; i++){
      t->delim[i] = !isalnum(i);
    }
  }

  *ppTokenizer = &t->base;
  return SQLITE_OK;
}
