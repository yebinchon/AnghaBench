
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xDelete ) (scalar_t__) ;} ;
struct TYPE_5__ {scalar_t__ pTokenizer; TYPE_1__ tokenizer; } ;
typedef TYPE_2__ PorterTokenizer ;
typedef int Fts5Tokenizer ;


 int sqlite3_free (TYPE_2__*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void fts5PorterDelete(Fts5Tokenizer *pTok){
  if( pTok ){
    PorterTokenizer *p = (PorterTokenizer*)pTok;
    if( p->pTokenizer ){
      p->tokenizer.xDelete(p->pTokenizer);
    }
    sqlite3_free(p);
  }
}
