
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aTokenChar; int aCategory; } ;
typedef TYPE_1__ Unicode61Tokenizer ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3Fts5UnicodeAscii (int ,int ) ;
 scalar_t__ sqlite3Fts5UnicodeCatParse (char const*,int ) ;

__attribute__((used)) static int unicodeSetCategories(Unicode61Tokenizer *p, const char *zCat){
  const char *z = zCat;

  while( *z ){
    while( *z==' ' || *z=='\t' ) z++;
    if( *z && sqlite3Fts5UnicodeCatParse(z, p->aCategory) ){
      return SQLITE_ERROR;
    }
    while( *z!=' ' && *z!='\t' && *z!='\0' ) z++;
  }

  sqlite3Fts5UnicodeAscii(p->aCategory, p->aTokenChar);
  return SQLITE_OK;
}
