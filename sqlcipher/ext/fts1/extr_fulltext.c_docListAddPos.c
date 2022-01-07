
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iType; int iLastPos; } ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int appendVarint (TYPE_1__*,int) ;
 int assert (int) ;

__attribute__((used)) static void docListAddPos(DocList *d, int iPos){
  assert( d->iType>=DL_POSITIONS );
  appendVarint(d, iPos-d->iLastPos+1);
  d->iLastPos = iPos;
}
