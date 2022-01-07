
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pTokenizer; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {int * pTerm; scalar_t__ nTerms; } ;
typedef TYPE_2__ Query ;


 int SQLITE_OK ;
 int free (char*) ;
 char* string_dup (char const*) ;
 int tokenize_segment (int ,char*,int,TYPE_2__*) ;

__attribute__((used)) static int parse_query(fulltext_vtab *v, const char *zQuery, Query *pQuery){
  char *zQuery1 = string_dup(zQuery);
  int in_phrase = 0;
  char *s = zQuery1;
  pQuery->nTerms = 0;
  pQuery->pTerm = ((void*)0);

  while( *s ){
    char *t = s;
    while( *t ){
      if( *t=='"' ){
        *t++ = '\0';
        break;
      }
      ++t;
    }
    if( *s ){
      tokenize_segment(v->pTokenizer, s, in_phrase, pQuery);
    }
    s = t;
    in_phrase = !in_phrase;
  }

  free(zQuery1);
  return SQLITE_OK;
}
