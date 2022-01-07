
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char current; int buff; } ;
typedef TYPE_1__ LexState ;


 int esccheck (TYPE_1__*,int,char*) ;
 unsigned long gethexa (TYPE_1__*) ;
 int lisxdigit (char) ;
 unsigned long luaO_hexavalue (char) ;
 int luaZ_buffremove (int ,int) ;
 int next (TYPE_1__*) ;
 scalar_t__ save_and_next (TYPE_1__*) ;

__attribute__((used)) static unsigned long readutf8esc (LexState *ls) {
  unsigned long r;
  int i = 4;
  save_and_next(ls);
  esccheck(ls, ls->current == '{', "missing '{'");
  r = gethexa(ls);
  while ((save_and_next(ls), lisxdigit(ls->current))) {
    i++;
    r = (r << 4) + luaO_hexavalue(ls->current);
    esccheck(ls, r <= 0x10FFFF, "UTF-8 value too large");
  }
  esccheck(ls, ls->current == '}', "missing '}'");
  next(ls);
  luaZ_buffremove(ls->buff, i);
  return r;
}
