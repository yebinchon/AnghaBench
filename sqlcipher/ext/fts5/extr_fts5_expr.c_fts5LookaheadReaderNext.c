
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iPos; scalar_t__ iLookahead; int i; int n; int a; } ;
typedef TYPE_1__ Fts5LookaheadReader ;


 scalar_t__ FTS5_LOOKAHEAD_EOF ;
 scalar_t__ sqlite3Fts5PoslistNext64 (int ,int ,int *,scalar_t__*) ;

__attribute__((used)) static int fts5LookaheadReaderNext(Fts5LookaheadReader *p){
  p->iPos = p->iLookahead;
  if( sqlite3Fts5PoslistNext64(p->a, p->n, &p->i, &p->iLookahead) ){
    p->iLookahead = FTS5_LOOKAHEAD_EOF;
  }
  return (p->iPos==FTS5_LOOKAHEAD_EOF);
}
