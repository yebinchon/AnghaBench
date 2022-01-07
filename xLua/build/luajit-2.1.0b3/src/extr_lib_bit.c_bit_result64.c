
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int base; } ;
typedef TYPE_1__ lua_State ;
typedef int GCcdata ;
typedef int CTypeID ;


 int FFH_RES (int) ;
 int LJ_FR2 ;
 scalar_t__ cdataptr (int *) ;
 int * lj_cdata_new_ (TYPE_1__*,int ,int) ;
 int setcdataV (TYPE_1__*,int,int *) ;

__attribute__((used)) static int bit_result64(lua_State *L, CTypeID id, uint64_t x)
{
  GCcdata *cd = lj_cdata_new_(L, id, 8);
  *(uint64_t *)cdataptr(cd) = x;
  setcdataV(L, L->base-1-LJ_FR2, cd);
  return FFH_RES(1);
}
