
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {scalar_t__ user; } ;
typedef TYPE_1__* FT_Memory ;


 int fz_free (int *,void*) ;

__attribute__((used)) static void ft_free(FT_Memory memory, void *block)
{
 fz_context *ctx = (fz_context *) memory->user;
 fz_free(ctx, block);
}
