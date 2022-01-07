
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ magic; int nOp; TYPE_3__* pParse; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_9__ {int nLabel; scalar_t__ nLabelAlloc; int* aLabel; TYPE_1__* db; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_3__ Parse ;


 int ADDR (int) ;
 int SQLITE_VdbeAddopTrace ;
 scalar_t__ VDBE_MAGIC_INIT ;
 int assert (int) ;
 int printf (char*,int,int) ;
 int resizeResolveLabel (TYPE_3__*,TYPE_2__*,int) ;

void sqlite3VdbeResolveLabel(Vdbe *v, int x){
  Parse *p = v->pParse;
  int j = ADDR(x);
  assert( v->magic==VDBE_MAGIC_INIT );
  assert( j<-p->nLabel );
  assert( j>=0 );





  if( p->nLabelAlloc + p->nLabel < 0 ){
    resizeResolveLabel(p,v,j);
  }else{
    assert( p->aLabel[j]==(-1) );
    p->aLabel[j] = v->nOp;
  }
}
