
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current; } ;
typedef TYPE_1__ LexState ;


 int esccheck (TYPE_1__*,int ,char*) ;
 int lisxdigit (int ) ;
 int luaO_hexavalue (int ) ;
 int save_and_next (TYPE_1__*) ;

__attribute__((used)) static int gethexa (LexState *ls) {
  save_and_next(ls);
  esccheck (ls, lisxdigit(ls->current), "hexadecimal digit expected");
  return luaO_hexavalue(ls->current);
}
