
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** spa_ddt; } ;
typedef TYPE_1__ spa_t ;
typedef int ddt_t ;
typedef int blkptr_t ;


 size_t BP_GET_CHECKSUM (int const*) ;

ddt_t *
ddt_select(spa_t *spa, const blkptr_t *bp)
{
 return (spa->spa_ddt[BP_GET_CHECKSUM(bp)]);
}
