
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buff; } ;
typedef TYPE_1__ LexState ;


 int gethexa (TYPE_1__*) ;
 int luaZ_buffremove (int ,int) ;

__attribute__((used)) static int readhexaesc (LexState *ls) {
  int r = gethexa(ls);
  r = (r << 4) + gethexa(ls);
  luaZ_buffremove(ls->buff, 2);
  return r;
}
