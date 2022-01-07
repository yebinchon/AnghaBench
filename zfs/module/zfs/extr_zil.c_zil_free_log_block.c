
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zl_spa; } ;
typedef TYPE_1__ zilog_t ;
typedef int uint64_t ;
typedef int blkptr_t ;


 int dmu_tx_get_txg (void*) ;
 int zio_free (int ,int ,int *) ;

__attribute__((used)) static int
zil_free_log_block(zilog_t *zilog, blkptr_t *bp, void *tx, uint64_t claim_txg)
{
 zio_free(zilog->zl_spa, dmu_tx_get_txg(tx), bp);

 return (0);
}
