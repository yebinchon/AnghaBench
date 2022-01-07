
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current; } ;
typedef TYPE_1__ LexState ;


 int UCHAR_MAX ;
 int escerror (TYPE_1__*,int*,int,char*) ;
 scalar_t__ lisdigit (int) ;
 int next (TYPE_1__*) ;

__attribute__((used)) static int readdecesc (LexState *ls) {
  int c[3], i;
  int r = 0;
  for (i = 0; i < 3 && lisdigit(ls->current); i++) {
    c[i] = ls->current;
    r = 10*r + c[i] - '0';
    next(ls);
  }
  if (r > UCHAR_MAX)
    escerror(ls, c, i, "decimal escape too large");
  return r;
}
