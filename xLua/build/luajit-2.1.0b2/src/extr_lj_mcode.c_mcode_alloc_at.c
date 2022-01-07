
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;


 int LJ_TRERR_MCODEAL ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int lj_trace_err (int *,int ) ;
 void* mmap (void*,size_t,int,int,int,int ) ;

__attribute__((used)) static void *mcode_alloc_at(jit_State *J, uintptr_t hint, size_t sz, int prot)
{
  void *p = mmap((void *)hint, sz, prot, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
  if (p == MAP_FAILED) {
    if (!hint) lj_trace_err(J, LJ_TRERR_MCODEAL);
    p = ((void*)0);
  }
  return p;
}
