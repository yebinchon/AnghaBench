
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int picture_count; } ;
typedef TYPE_1__ picture_pool_t ;



unsigned picture_pool_GetSize(const picture_pool_t *pool)
{
    return pool->picture_count;
}
