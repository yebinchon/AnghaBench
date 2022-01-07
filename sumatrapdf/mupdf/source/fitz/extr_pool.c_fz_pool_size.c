
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ fz_pool ;
typedef int fz_context ;



size_t fz_pool_size(fz_context *ctx, fz_pool *pool)
{
 return pool ? pool->size : 0;
}
