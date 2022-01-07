
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nData; int iLastColumn; int iLastPos; int iLastOffset; } ;
typedef TYPE_1__ DocList ;


 int POS_BASE ;
 int POS_COLUMN ;
 int appendVarint (TYPE_1__*,int) ;
 int assert (int) ;

__attribute__((used)) static void addPos(DocList *d, int iColumn, int iPos){
  assert( d->nData>0 );
  --d->nData;
  if( iColumn!=d->iLastColumn ){
    assert( iColumn>d->iLastColumn );
    appendVarint(d, POS_COLUMN);
    appendVarint(d, iColumn);
    d->iLastColumn = iColumn;
    d->iLastPos = d->iLastOffset = 0;
  }
  assert( iPos>=d->iLastPos );
  appendVarint(d, iPos-d->iLastPos+POS_BASE);
  d->iLastPos = iPos;
}
