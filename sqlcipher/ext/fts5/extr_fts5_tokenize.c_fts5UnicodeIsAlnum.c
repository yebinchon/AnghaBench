
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* aCategory; } ;
typedef TYPE_1__ Unicode61Tokenizer ;


 int fts5UnicodeIsException (TYPE_1__*,int) ;
 size_t sqlite3Fts5UnicodeCategory (int ) ;

__attribute__((used)) static int fts5UnicodeIsAlnum(Unicode61Tokenizer *p, int iCode){
  return (
    p->aCategory[sqlite3Fts5UnicodeCategory((u32)iCode)]
    ^ fts5UnicodeIsException(p, iCode)
  );
}
