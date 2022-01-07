
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lockMask; } ;
typedef TYPE_1__ Vdbe ;


 scalar_t__ DbMaskAllZero (int ) ;
 int vdbeLeave (TYPE_1__*) ;

void sqlite3VdbeLeave(Vdbe *p){
  if( DbMaskAllZero(p->lockMask) ) return;
  vdbeLeave(p);
}
