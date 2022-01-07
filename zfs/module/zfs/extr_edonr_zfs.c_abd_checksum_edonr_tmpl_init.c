
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zcs_bytes; } ;
typedef TYPE_1__ zio_cksum_salt_t ;
typedef int uint8_t ;
typedef int salt_block ;
typedef void EdonRState ;


 int CTASSERT (int) ;
 int EDONR_BLOCK_SIZE ;
 int EDONR_MODE ;
 int EdonRHash (int,int *,int,int *) ;
 int EdonRInit (void*,int) ;
 int EdonRUpdate (void*,int *,int) ;
 int KM_SLEEP ;
 void* kmem_zalloc (int,int ) ;

void *
abd_checksum_edonr_tmpl_init(const zio_cksum_salt_t *salt)
{
 EdonRState *ctx;
 uint8_t salt_block[EDONR_BLOCK_SIZE];
 CTASSERT(EDONR_BLOCK_SIZE == 2 * (EDONR_MODE / 8));
 EdonRHash(EDONR_MODE, salt->zcs_bytes, sizeof (salt->zcs_bytes) * 8,
     salt_block);
 EdonRHash(EDONR_MODE, salt_block, EDONR_MODE, salt_block +
     EDONR_MODE / 8);





 ctx = kmem_zalloc(sizeof (*ctx), KM_SLEEP);
 EdonRInit(ctx, EDONR_MODE);
 EdonRUpdate(ctx, salt_block, sizeof (salt_block) * 8);
 return (ctx);
}
