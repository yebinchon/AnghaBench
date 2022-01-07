
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_8__ {size_t info; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_11__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_10__ {size_t nuv; size_t* uvmap; void** uvtmp; } ;
typedef size_t MSize ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;


 int LJ_MAX_UPVAL ;
 size_t LJ_MAX_VSTACK ;
 scalar_t__ VLOCAL ;
 scalar_t__ VUPVAL ;
 int checklimit (TYPE_3__*,size_t,int ,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static MSize var_lookup_uv(FuncState *fs, MSize vidx, ExpDesc *e)
{
  MSize i, n = fs->nuv;
  for (i = 0; i < n; i++)
    if (fs->uvmap[i] == vidx)
      return i;

  checklimit(fs, fs->nuv, LJ_MAX_UPVAL, "upvalues");
  lua_assert(e->k == VLOCAL || e->k == VUPVAL);
  fs->uvmap[n] = (uint16_t)vidx;
  fs->uvtmp[n] = (uint16_t)(e->k == VLOCAL ? vidx : LJ_MAX_VSTACK+e->u.s.info);
  fs->nuv = n+1;
  return n;
}
