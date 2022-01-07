
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int env; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_7__ {int env; int gct; } ;
struct TYPE_9__ {TYPE_1__ c; } ;
typedef int GCtab ;
typedef TYPE_3__ GCfunc ;


 int LJ_TFUNC ;
 TYPE_3__* curr_func (TYPE_2__*) ;
 int * tabref (int ) ;

__attribute__((used)) static GCtab *getcurrenv(lua_State *L)
{
  GCfunc *fn = curr_func(L);
  return fn->c.gct == ~LJ_TFUNC ? tabref(fn->c.env) : tabref(L->env);
}
