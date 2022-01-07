
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ins; } ;
struct TYPE_7__ {int flags; int framesize; TYPE_3__* bcbase; } ;
struct TYPE_6__ {size_t sizebc; } ;
typedef size_t MSize ;
typedef TYPE_1__ GCproto ;
typedef TYPE_2__ FuncState ;
typedef TYPE_3__ BCInsLine ;
typedef int BCIns ;


 int BCINS_AD (int ,int ,int ) ;
 int BC_FUNCF ;
 int BC_FUNCV ;
 int PROTO_VARARG ;

__attribute__((used)) static void fs_fixup_bc(FuncState *fs, GCproto *pt, BCIns *bc, MSize n)
{
  BCInsLine *base = fs->bcbase;
  MSize i;
  pt->sizebc = n;
  bc[0] = BCINS_AD((fs->flags & PROTO_VARARG) ? BC_FUNCV : BC_FUNCF,
     fs->framesize, 0);
  for (i = 1; i < n; i++)
    bc[i] = base[i].ins;
}
