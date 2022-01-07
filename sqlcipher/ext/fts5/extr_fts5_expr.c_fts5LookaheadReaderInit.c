
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int n; int const* a; } ;
typedef TYPE_1__ Fts5LookaheadReader ;


 int fts5LookaheadReaderNext (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int fts5LookaheadReaderInit(
  const u8 *a, int n,
  Fts5LookaheadReader *p
){
  memset(p, 0, sizeof(Fts5LookaheadReader));
  p->a = a;
  p->n = n;
  fts5LookaheadReaderNext(p);
  return fts5LookaheadReaderNext(p);
}
