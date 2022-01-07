
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uchar_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_3__ {int dde_key; int dde_phys; } ;
typedef TYPE_1__ ddt_entry_t ;
typedef int cbuf ;


 int DDT_KEY_WORDS ;
 int ddt_compress (int ,int *,int,int) ;
 int zap_update_uint64 (int *,int ,int *,int ,int,int ,int *,int *) ;

__attribute__((used)) static int
ddt_zap_update(objset_t *os, uint64_t object, ddt_entry_t *dde, dmu_tx_t *tx)
{
 uchar_t cbuf[sizeof (dde->dde_phys) + 1];
 uint64_t csize;

 csize = ddt_compress(dde->dde_phys, cbuf,
     sizeof (dde->dde_phys), sizeof (cbuf));

 return (zap_update_uint64(os, object, (uint64_t *)&dde->dde_key,
     DDT_KEY_WORDS, 1, csize, cbuf, tx));
}
