
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int IdxT ;


 int RANLIMIT ;
 int choosePivot (int,int,unsigned int) ;
 unsigned int l_randomizePivot () ;
 int lua_geti (int *,int,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int partition (int *,int,int) ;
 int set2 (int *,int,int) ;
 scalar_t__ sort_comp (int *,int,int) ;

__attribute__((used)) static void auxsort (lua_State *L, IdxT lo, IdxT up,
                                   unsigned int rnd) {
  while (lo < up) {
    IdxT p;
    IdxT n;

    lua_geti(L, 1, lo);
    lua_geti(L, 1, up);
    if (sort_comp(L, -1, -2))
      set2(L, lo, up);
    else
      lua_pop(L, 2);
    if (up - lo == 1)
      return;
    if (up - lo < RANLIMIT || rnd == 0)
      p = (lo + up)/2;
    else
      p = choosePivot(lo, up, rnd);
    lua_geti(L, 1, p);
    lua_geti(L, 1, lo);
    if (sort_comp(L, -2, -1))
      set2(L, p, lo);
    else {
      lua_pop(L, 1);
      lua_geti(L, 1, up);
      if (sort_comp(L, -1, -2))
        set2(L, p, up);
      else
        lua_pop(L, 2);
    }
    if (up - lo == 2)
      return;
    lua_geti(L, 1, p);
    lua_pushvalue(L, -1);
    lua_geti(L, 1, up - 1);
    set2(L, p, up - 1);
    p = partition(L, lo, up);

    if (p - lo < up - p) {
      auxsort(L, lo, p - 1, rnd);
      n = p - lo;
      lo = p + 1;
    }
    else {
      auxsort(L, p + 1, up, rnd);
      n = up - p;
      up = p - 1;
    }
    if ((up - lo) / 128 > n)
      rnd = l_randomizePivot();
  }
}
