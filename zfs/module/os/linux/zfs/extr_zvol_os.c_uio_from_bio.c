
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uio_loffset; int uio_skip; int uio_resid; int uio_limit; int uio_segflg; scalar_t__ uio_iovcnt; int * uio_bvec; } ;
typedef TYPE_1__ uio_t ;
struct bio {scalar_t__ bi_vcnt; int * bi_io_vec; } ;


 size_t BIO_BI_IDX (struct bio*) ;
 int BIO_BI_SECTOR (struct bio*) ;
 int BIO_BI_SIZE (struct bio*) ;
 int BIO_BI_SKIP (struct bio*) ;
 int MAXOFFSET_T ;
 int UIO_BVEC ;

__attribute__((used)) static void
uio_from_bio(uio_t *uio, struct bio *bio)
{
 uio->uio_bvec = &bio->bi_io_vec[BIO_BI_IDX(bio)];
 uio->uio_iovcnt = bio->bi_vcnt - BIO_BI_IDX(bio);
 uio->uio_loffset = BIO_BI_SECTOR(bio) << 9;
 uio->uio_segflg = UIO_BVEC;
 uio->uio_limit = MAXOFFSET_T;
 uio->uio_resid = BIO_BI_SIZE(bio);
 uio->uio_skip = BIO_BI_SKIP(bio);
}
