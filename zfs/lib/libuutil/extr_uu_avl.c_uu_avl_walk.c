
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* uu_walk_fn_t ) (void*,void*) ;
typedef int uu_avl_walk_t ;
typedef int uu_avl_t ;
typedef int uint32_t ;


 int UU_ERROR_CALLBACK_FAILED ;
 int UU_ERROR_UNKNOWN_FLAG ;
 int UU_WALK_NEXT ;
 int UU_WALK_REVERSE ;
 int UU_WALK_ROBUST ;
 void* _avl_walk_advance (int *,int *) ;
 int _avl_walk_fini (int *) ;
 int _avl_walk_init (int *,int *,int) ;
 int stub1 (void*,void*) ;
 int uu_set_error (int ) ;

int
uu_avl_walk(uu_avl_t *ap, uu_walk_fn_t *func, void *private, uint32_t flags)
{
 void *e;
 uu_avl_walk_t my_walk;

 int status = UU_WALK_NEXT;

 if (flags & ~(UU_WALK_ROBUST | UU_WALK_REVERSE)) {
  uu_set_error(UU_ERROR_UNKNOWN_FLAG);
  return (-1);
 }

 _avl_walk_init(&my_walk, ap, flags);
 while (status == UU_WALK_NEXT &&
     (e = _avl_walk_advance(&my_walk, ap)) != ((void*)0))
  status = (*func)(e, private);
 _avl_walk_fini(&my_walk);

 if (status >= 0)
  return (0);
 uu_set_error(UU_ERROR_CALLBACK_FAILED);
 return (-1);
}
