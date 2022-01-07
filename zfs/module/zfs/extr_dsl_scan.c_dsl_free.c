
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int blkptr_t ;


 int zio_free (int ,int ,int const*) ;

void
dsl_free(dsl_pool_t *dp, uint64_t txg, const blkptr_t *bp)
{
 zio_free(dp->dp_spa, txg, bp);
}
