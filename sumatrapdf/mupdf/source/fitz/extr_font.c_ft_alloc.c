
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {scalar_t__ user; } ;
typedef TYPE_1__* FT_Memory ;


 void* Memento_label (int ,char*) ;
 int fz_malloc_no_throw (int *,long) ;

__attribute__((used)) static void *ft_alloc(FT_Memory memory, long size)
{
 fz_context *ctx = (fz_context *) memory->user;
 return Memento_label(fz_malloc_no_throw(ctx, size), "ft_alloc");
}
