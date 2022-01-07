
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mcarea; } ;
typedef TYPE_1__ jit_State ;


 int LJ_PRNG_BITS (TYPE_1__*,int) ;
 int LJ_TARGET_JUMPRANGE ;
 int LJ_TRERR_MCODEAL ;
 int MCPROT_GEN ;
 int lj_trace_err (TYPE_1__*,int ) ;
 scalar_t__ lj_vm_exit_handler ;
 void* mcode_alloc_at (TYPE_1__*,uintptr_t,size_t,int ) ;
 int mcode_free (TYPE_1__*,void*,size_t) ;
 scalar_t__ mcode_validptr (void*) ;

__attribute__((used)) static void *mcode_alloc(jit_State *J, size_t sz)
{
  uintptr_t target = (uintptr_t)(void *)lj_vm_exit_handler & ~(uintptr_t)0xffff;

  const uintptr_t range = (1u << (LJ_TARGET_JUMPRANGE-1)) - (1u << 21);

  uintptr_t hint = J->mcarea ? (uintptr_t)J->mcarea - sz : 0;
  int i;

  for (i = 0; i < LJ_TARGET_JUMPRANGE; i++) {
    if (mcode_validptr(hint)) {
      void *p = mcode_alloc_at(J, hint, sz, MCPROT_GEN);

      if (mcode_validptr(p) &&
   ((uintptr_t)p + sz - target < range || target - (uintptr_t)p < range))
 return p;
      if (p) mcode_free(J, p, sz);
    }

    do {
      hint = LJ_PRNG_BITS(J, LJ_TARGET_JUMPRANGE-16) << 16;
    } while (!(hint + sz < range+range));
    hint = target + hint - range;
  }
  lj_trace_err(J, LJ_TRERR_MCODEAL);
  return ((void*)0);
}
