
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int next; int prev; } ;
typedef TYPE_1__ GCupval ;


 int lua_assert (int) ;
 int setgcrefr (int ,int ) ;
 TYPE_1__* uvnext (TYPE_1__*) ;
 TYPE_1__* uvprev (TYPE_1__*) ;

__attribute__((used)) static void unlinkuv(GCupval *uv)
{
  lua_assert(uvprev(uvnext(uv)) == uv && uvnext(uvprev(uv)) == uv);
  setgcrefr(uvnext(uv)->prev, uv->prev);
  setgcrefr(uvprev(uv)->next, uv->next);
}
