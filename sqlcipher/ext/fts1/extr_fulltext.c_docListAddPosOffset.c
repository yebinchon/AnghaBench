
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iType; int iLastOffset; } ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS_OFFSETS ;
 int appendVarint (TYPE_1__*,int) ;
 int assert (int) ;
 int docListAddPos (TYPE_1__*,int) ;

__attribute__((used)) static void docListAddPosOffset(DocList *d, int iPos,
                                int iStartOffset, int iEndOffset){
  assert( d->iType==DL_POSITIONS_OFFSETS );
  docListAddPos(d, iPos);
  appendVarint(d, iStartOffset-d->iLastOffset);
  d->iLastOffset = iStartOffset;
  appendVarint(d, iEndOffset-iStartOffset);
}
