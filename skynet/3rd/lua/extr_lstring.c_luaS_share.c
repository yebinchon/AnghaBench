
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ TString ;


 int ATOM_DEC (int *) ;
 int STRID ;
 int makeshared (TYPE_1__*) ;

void luaS_share (TString *ts) {
  if (ts == ((void*)0))
    return;
  makeshared(ts);
  ts->id = ATOM_DEC(&STRID);
}
