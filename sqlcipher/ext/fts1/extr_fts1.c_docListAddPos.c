
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iType; } ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int POS_END ;
 int addPos (TYPE_1__*,int,int) ;
 int appendVarint (TYPE_1__*,int ) ;
 int assert (int) ;

__attribute__((used)) static void docListAddPos(DocList *d, int iColumn, int iPos){
  assert( d->iType==DL_POSITIONS );
  addPos(d, iColumn, iPos);
  appendVarint(d, POS_END);
}
