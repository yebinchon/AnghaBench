
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iType; int iLastOffset; } ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS ;
 scalar_t__ DL_POSITIONS_OFFSETS ;
 int POS_END ;
 int addPos (TYPE_1__*,int,int) ;
 int appendVarint (TYPE_1__*,int) ;
 int assert (int) ;

__attribute__((used)) static void docListAddPosOffset(
  DocList *d,
  int iColumn,
  int iPos,
  int iStartOffset,
  int iEndOffset
){
  assert( d->iType>=DL_POSITIONS );
  addPos(d, iColumn, iPos);
  if( d->iType==DL_POSITIONS_OFFSETS ){
    assert( iStartOffset>=d->iLastOffset );
    appendVarint(d, iStartOffset-d->iLastOffset);
    d->iLastOffset = iStartOffset;
    assert( iEndOffset>=iStartOffset );
    appendVarint(d, iEndOffset-iStartOffset);
  }
  appendVarint(d, POS_END);
}
