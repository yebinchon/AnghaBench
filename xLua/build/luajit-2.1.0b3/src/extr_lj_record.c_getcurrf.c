
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int baseslot; scalar_t__* base; } ;
typedef TYPE_1__ jit_State ;
typedef scalar_t__ TRef ;


 int IRSLOAD_READONLY ;
 int IRT_FUNC ;
 int LJ_FR2 ;
 int lua_assert (int) ;
 scalar_t__ sloadt (TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static TRef getcurrf(jit_State *J)
{
  if (J->base[-1-LJ_FR2])
    return J->base[-1-LJ_FR2];
  lua_assert(J->baseslot == 1+LJ_FR2);
  return sloadt(J, -1-LJ_FR2, IRT_FUNC, IRSLOAD_READONLY);
}
