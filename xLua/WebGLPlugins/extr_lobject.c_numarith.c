
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
 int lua_assert (int ) ;
 int luai_numadd (int *,int ,int ) ;
 int luai_numdiv (int *,int ,int ) ;
 int luai_numidiv (int *,int ,int ) ;
 int luai_nummod (int *,int ,int ,int ) ;
 int luai_nummul (int *,int ,int ) ;
 int luai_numpow (int *,int ,int ) ;
 int luai_numsub (int *,int ,int ) ;
 int luai_numunm (int *,int ) ;

__attribute__((used)) static lua_Number numarith (lua_State *L, int op, lua_Number v1,
                                                  lua_Number v2) {
  switch (op) {
    case 135: return luai_numadd(L, v1, v2);
    case 129: return luai_numsub(L, v1, v2);
    case 131: return luai_nummul(L, v1, v2);
    case 134: return luai_numdiv(L, v1, v2);
    case 130: return luai_numpow(L, v1, v2);
    case 133: return luai_numidiv(L, v1, v2);
    case 128: return luai_numunm(L, v1);
    case 132: {
      lua_Number m;
      luai_nummod(L, v1, v2, m);
      return m;
    }
    default: lua_assert(0); return 0;
  }
}
