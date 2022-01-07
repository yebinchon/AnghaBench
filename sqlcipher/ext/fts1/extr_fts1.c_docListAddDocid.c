
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {scalar_t__ iType; scalar_t__ iLastOffset; scalar_t__ iLastPos; scalar_t__ iLastColumn; } ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int POS_END ;
 int appendVarint (TYPE_1__*,int ) ;

__attribute__((used)) static void docListAddDocid(DocList *d, sqlite_int64 iDocid){
  appendVarint(d, iDocid);
  if( d->iType>=DL_POSITIONS ){
    appendVarint(d, POS_END);
    d->iLastColumn = 0;
    d->iLastPos = d->iLastOffset = 0;
  }
}
