
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {size_t n; char* buff; int * f; int c; } ;
typedef TYPE_1__ RN ;
typedef int FILE ;


 scalar_t__ isspace (int ) ;
 int l_getc (int *) ;
 int l_lockfile (int *) ;
 int l_unlockfile (int *) ;
 char lua_getlocaledecpoint () ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_stringtonumber (int *,char*) ;
 scalar_t__ readdigits (TYPE_1__*,int) ;
 scalar_t__ test2 (TYPE_1__*,char*) ;
 int ungetc (int ,int *) ;

__attribute__((used)) static int read_number (lua_State *L, FILE *f) {
  RN rn;
  int count = 0;
  int hex = 0;
  char decp[2];
  rn.f = f; rn.n = 0;
  decp[0] = lua_getlocaledecpoint();
  decp[1] = '.';
  l_lockfile(rn.f);
  do { rn.c = l_getc(rn.f); } while (isspace(rn.c));
  test2(&rn, "-+");
  if (test2(&rn, "00")) {
    if (test2(&rn, "xX")) hex = 1;
    else count = 1;
  }
  count += readdigits(&rn, hex);
  if (test2(&rn, decp))
    count += readdigits(&rn, hex);
  if (count > 0 && test2(&rn, (hex ? "pP" : "eE"))) {
    test2(&rn, "-+");
    readdigits(&rn, 0);
  }
  ungetc(rn.c, rn.f);
  l_unlockfile(rn.f);
  rn.buff[rn.n] = '\0';
  if (lua_stringtonumber(L, rn.buff))
    return 1;
  else {
   lua_pushnil(L);
   return 0;
  }
}
