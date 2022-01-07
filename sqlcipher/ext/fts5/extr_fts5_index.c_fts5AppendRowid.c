
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int rc; } ;
typedef int Fts5Iter ;
typedef TYPE_1__ Fts5Index ;
typedef int Fts5Buffer ;


 int UNUSED_PARAM (int *) ;
 int fts5BufferAppendVarint (int *,int *,int ) ;

__attribute__((used)) static void fts5AppendRowid(
  Fts5Index *p,
  i64 iDelta,
  Fts5Iter *pUnused,
  Fts5Buffer *pBuf
){
  UNUSED_PARAM(pUnused);
  fts5BufferAppendVarint(&p->rc, pBuf, iDelta);
}
