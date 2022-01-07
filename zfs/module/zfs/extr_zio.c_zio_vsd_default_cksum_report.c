
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_size; int io_abd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int zcr_free; int zcr_finish; void* zcr_cbdata; int zcr_cbinfo; } ;
typedef TYPE_2__ zio_cksum_report_t ;


 void* abd_alloc_sametype (int ,int ) ;
 int abd_copy (void*,int ,int ) ;
 int zio_abd_free ;
 int zio_vsd_default_cksum_finish ;

void
zio_vsd_default_cksum_report(zio_t *zio, zio_cksum_report_t *zcr, void *ignored)
{
 void *abd = abd_alloc_sametype(zio->io_abd, zio->io_size);

 abd_copy(abd, zio->io_abd, zio->io_size);

 zcr->zcr_cbinfo = zio->io_size;
 zcr->zcr_cbdata = abd;
 zcr->zcr_finish = zio_vsd_default_cksum_finish;
 zcr->zcr_free = zio_abd_free;
}
