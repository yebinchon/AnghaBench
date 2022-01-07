
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picture_t ;
typedef int picture_pool_t ;
struct TYPE_3__ {unsigned int picture_count; int * const* picture; } ;
typedef TYPE_1__ picture_pool_configuration_t ;


 int * picture_pool_NewExtended (TYPE_1__*) ;

picture_pool_t *picture_pool_New(unsigned count, picture_t *const *tab)
{
    picture_pool_configuration_t cfg = {
        .picture_count = count,
        .picture = tab,
    };

    return picture_pool_NewExtended(&cfg);
}
