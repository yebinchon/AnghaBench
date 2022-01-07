
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zDelim ;
typedef int sqlite3_tokenizer ;
struct TYPE_2__ {int base; void* zDelim; } ;
typedef TYPE_1__ simple_tokenizer ;


 int SQLITE_OK ;
 int assert (int) ;
 int isalnum (int) ;
 scalar_t__ malloc (int) ;
 void* string_dup (char const*) ;

__attribute__((used)) static int simpleCreate(
  int argc, const char **argv,
  sqlite3_tokenizer **ppTokenizer
){
  simple_tokenizer *t;

  t = (simple_tokenizer *) malloc(sizeof(simple_tokenizer));





  if( argc>1 ){
    t->zDelim = string_dup(argv[1]);
  } else {

    char zDelim[0x80];
    int i, j;
    for(i=1, j=0; i<0x80; i++){
      if( !isalnum(i) ){
        zDelim[j++] = i;
      }
    }
    zDelim[j++] = '\0';
    assert( j<=sizeof(zDelim) );
    t->zDelim = string_dup(zDelim);
  }

  *ppTokenizer = &t->base;
  return SQLITE_OK;
}
