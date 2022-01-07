
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;
typedef int fz_context ;


 int FZ_LOCK_ALLOC ;
 int Memento_checkShortPointerOrNull (scalar_t__*) ;
 int Memento_dropShortRef (void*) ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;

__attribute__((used)) static inline int
fz_drop_imp16(fz_context *ctx, void *p, int16_t *refs)
{
 if (p)
 {
  int drop;
  (void)Memento_checkShortPointerOrNull(refs);
  fz_lock(ctx, FZ_LOCK_ALLOC);
  if (*refs > 0)
  {
   (void)Memento_dropShortRef(p);
   drop = --*refs == 0;
  }
  else
   drop = 0;
  fz_unlock(ctx, FZ_LOCK_ALLOC);
  return drop;
 }
 return 0;
}
