
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int line; } ;
struct TYPE_7__ {int linedefined; size_t pc; TYPE_3__* bcbase; } ;
struct TYPE_6__ {int firstline; int numline; int lineinfo; } ;
typedef size_t MSize ;
typedef TYPE_1__ GCproto ;
typedef TYPE_2__ FuncState ;
typedef int BCLine ;
typedef TYPE_3__ BCInsLine ;


 scalar_t__ LJ_LIKELY (int) ;
 int lua_assert (int) ;
 int setmref (int ,void*) ;

__attribute__((used)) static void fs_fixup_line(FuncState *fs, GCproto *pt,
     void *lineinfo, BCLine numline)
{
  BCInsLine *base = fs->bcbase + 1;
  BCLine first = fs->linedefined;
  MSize i = 0, n = fs->pc-1;
  pt->firstline = fs->linedefined;
  pt->numline = numline;
  setmref(pt->lineinfo, lineinfo);
  if (LJ_LIKELY(numline < 256)) {
    uint8_t *li = (uint8_t *)lineinfo;
    do {
      BCLine delta = base[i].line - first;
      lua_assert(delta >= 0 && delta < 256);
      li[i] = (uint8_t)delta;
    } while (++i < n);
  } else if (LJ_LIKELY(numline < 65536)) {
    uint16_t *li = (uint16_t *)lineinfo;
    do {
      BCLine delta = base[i].line - first;
      lua_assert(delta >= 0 && delta < 65536);
      li[i] = (uint16_t)delta;
    } while (++i < n);
  } else {
    uint32_t *li = (uint32_t *)lineinfo;
    do {
      BCLine delta = base[i].line - first;
      lua_assert(delta >= 0);
      li[i] = (uint32_t)delta;
    } while (++i < n);
  }
}
