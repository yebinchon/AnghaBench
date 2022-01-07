
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t szmcarea; size_t szallmcarea; int * mcarea; int * mcbot; int * mctop; int mcprot; scalar_t__* param; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {size_t size; int * next; } ;
typedef int MCode ;
typedef TYPE_2__ MCLink ;


 size_t JIT_P_sizemcode ;
 size_t LJ_PAGESIZE ;
 int MCPROT_GEN ;
 scalar_t__ mcode_alloc (TYPE_1__*,size_t) ;

__attribute__((used)) static void mcode_allocarea(jit_State *J)
{
  MCode *oldarea = J->mcarea;
  size_t sz = (size_t)J->param[JIT_P_sizemcode] << 10;
  sz = (sz + LJ_PAGESIZE-1) & ~(size_t)(LJ_PAGESIZE - 1);
  J->mcarea = (MCode *)mcode_alloc(J, sz);
  J->szmcarea = sz;
  J->mcprot = MCPROT_GEN;
  J->mctop = (MCode *)((char *)J->mcarea + J->szmcarea);
  J->mcbot = (MCode *)((char *)J->mcarea + sizeof(MCLink));
  ((MCLink *)J->mcarea)->next = oldarea;
  ((MCLink *)J->mcarea)->size = sz;
  J->szallmcarea += sz;
}
