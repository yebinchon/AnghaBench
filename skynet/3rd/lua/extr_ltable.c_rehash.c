
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Table ;
typedef int TValue ;


 int MAXABITS ;
 unsigned int computesizes (unsigned int*,unsigned int*) ;
 scalar_t__ countint (int const*,unsigned int*) ;
 int luaH_resize (int *,int *,unsigned int,int) ;
 unsigned int numusearray (int *,unsigned int*) ;
 scalar_t__ numusehash (int *,unsigned int*,unsigned int*) ;

__attribute__((used)) static void rehash (lua_State *L, Table *t, const TValue *ek) {
  unsigned int asize;
  unsigned int na;
  unsigned int nums[MAXABITS + 1];
  int i;
  int totaluse;
  for (i = 0; i <= MAXABITS; i++) nums[i] = 0;
  na = numusearray(t, nums);
  totaluse = na;
  totaluse += numusehash(t, nums, &na);

  na += countint(ek, nums);
  totaluse++;

  asize = computesizes(nums, &na);

  luaH_resize(L, t, asize, totaluse - na);
}
