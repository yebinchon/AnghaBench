
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexState ;


 int escerror (int *,int*,int,char*) ;
 int lisxdigit (int) ;
 int luaO_hexavalue (int) ;
 int next (int *) ;

__attribute__((used)) static int readhexaesc (LexState *ls) {
  int c[3], i;
  int r = 0;
  c[0] = 'x';
  for (i = 1; i < 3; i++) {
    c[i] = next(ls);
    if (!lisxdigit(c[i]))
      escerror(ls, c, i + 1, "hexadecimal digit expected");
    r = (r << 4) + luaO_hexavalue(c[i]);
  }
  return r;
}
