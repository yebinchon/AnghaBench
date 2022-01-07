
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zp_checksum; } ;
struct TYPE_11__ {TYPE_1__ io_prop; int * io_bp; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_12__ {int rm_firstdatacol; TYPE_4__* rm_col; } ;
typedef TYPE_3__ raidz_map_t ;
struct TYPE_13__ {scalar_t__ rc_error; int rc_abd; int rc_tried; int rc_size; } ;
typedef TYPE_4__ raidz_col_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef int blkptr_t ;
typedef int abd_t ;


 int BP_GET_CHECKSUM (int *) ;
 scalar_t__ BP_IS_GANG (int *) ;
 int ECKSUM ;
 scalar_t__ SET_ERROR (int ) ;
 int VDEV_RAIDZ_MAXPARITY ;
 int ZIO_CHECKSUM_GANG_HEADER ;
 int ZIO_CHECKSUM_NOPARITY ;
 int * abd_alloc_sametype (int ,int ) ;
 scalar_t__ abd_cmp (int *,int ) ;
 int abd_copy (int *,int ,int ) ;
 int abd_free (int *) ;
 int raidz_checksum_error (TYPE_2__*,TYPE_4__*,int *) ;
 int vdev_raidz_generate_parity (TYPE_3__*) ;

__attribute__((used)) static int
raidz_parity_verify(zio_t *zio, raidz_map_t *rm)
{
 abd_t *orig[VDEV_RAIDZ_MAXPARITY];
 int c, ret = 0;
 raidz_col_t *rc;

 blkptr_t *bp = zio->io_bp;
 enum zio_checksum checksum = (bp == ((void*)0) ? zio->io_prop.zp_checksum :
     (BP_IS_GANG(bp) ? ZIO_CHECKSUM_GANG_HEADER : BP_GET_CHECKSUM(bp)));

 if (checksum == ZIO_CHECKSUM_NOPARITY)
  return (ret);

 for (c = 0; c < rm->rm_firstdatacol; c++) {
  rc = &rm->rm_col[c];
  if (!rc->rc_tried || rc->rc_error != 0)
   continue;

  orig[c] = abd_alloc_sametype(rc->rc_abd, rc->rc_size);
  abd_copy(orig[c], rc->rc_abd, rc->rc_size);
 }

 vdev_raidz_generate_parity(rm);

 for (c = 0; c < rm->rm_firstdatacol; c++) {
  rc = &rm->rm_col[c];
  if (!rc->rc_tried || rc->rc_error != 0)
   continue;
  if (abd_cmp(orig[c], rc->rc_abd) != 0) {
   raidz_checksum_error(zio, rc, orig[c]);
   rc->rc_error = SET_ERROR(ECKSUM);
   ret++;
  }
  abd_free(orig[c]);
 }

 return (ret);
}
