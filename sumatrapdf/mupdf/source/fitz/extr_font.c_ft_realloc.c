
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {scalar_t__ user; } ;
typedef TYPE_1__* FT_Memory ;


 void* ft_alloc (TYPE_1__*,long) ;
 int fz_free (int *,void*) ;
 void* fz_realloc_no_throw (int *,void*,long) ;

__attribute__((used)) static void *ft_realloc(FT_Memory memory, long cur_size, long new_size, void *block)
{
 fz_context *ctx = (fz_context *) memory->user;
 void *newblock = ((void*)0);
 if (new_size == 0)
 {
  fz_free(ctx, block);
  return newblock;
 }
 if (block == ((void*)0))
  return ft_alloc(memory, new_size);
 return fz_realloc_no_throw(ctx, block, new_size);
}
