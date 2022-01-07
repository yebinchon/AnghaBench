
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_LOCK_ALLOC ;
 int Memento_checkIntPointerOrNull (int*) ;
 int Memento_takeRef (void*) ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;

__attribute__((used)) static inline void *
fz_keep_imp(fz_context *ctx, void *p, int *refs)
{
 if (p)
 {
  (void)Memento_checkIntPointerOrNull(refs);
  fz_lock(ctx, FZ_LOCK_ALLOC);
  if (*refs > 0)
  {
   (void)Memento_takeRef(p);
   ++*refs;
  }
  fz_unlock(ctx, FZ_LOCK_ALLOC);
 }
 return p;
}
