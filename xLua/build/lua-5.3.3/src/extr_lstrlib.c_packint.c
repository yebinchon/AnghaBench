
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Unsigned ;
typedef int luaL_Buffer ;


 int MC ;
 int NB ;
 int SZINT ;
 int luaL_addsize (int *,int) ;
 char* luaL_prepbuffsize (int *,int) ;

__attribute__((used)) static void packint (luaL_Buffer *b, lua_Unsigned n,
                     int islittle, int size, int neg) {
  char *buff = luaL_prepbuffsize(b, size);
  int i;
  buff[islittle ? 0 : size - 1] = (char)(n & MC);
  for (i = 1; i < size; i++) {
    n >>= NB;
    buff[islittle ? i : size - 1 - i] = (char)(n & MC);
  }
  if (neg && size > SZINT) {
    for (i = SZINT; i < size; i++)
      buff[islittle ? i : size - 1 - i] = (char)MC;
  }
  luaL_addsize(b, size);
}
