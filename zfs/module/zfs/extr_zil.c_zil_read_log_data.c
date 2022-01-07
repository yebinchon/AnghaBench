
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int zl_spa; int zl_os; TYPE_1__* zl_header; } ;
typedef TYPE_2__ zilog_t ;
typedef int zbookmark_phys_t ;
struct TYPE_13__ {int lr_offset; int lr_foid; int lr_length; int lr_blkptr; } ;
typedef TYPE_3__ lr_write_t ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef int blkptr_t ;
typedef int arc_flags_t ;
struct TYPE_14__ {int b_data; } ;
typedef TYPE_4__ arc_buf_t ;
struct TYPE_11__ {scalar_t__ zh_claim_txg; } ;


 int ARC_FLAG_WAIT ;
 int BP_GET_LSIZE (int const*) ;
 scalar_t__ BP_IS_HOLE (int const*) ;
 int MAX (int,int ) ;
 int SET_BOOKMARK (int *,int ,int ,int ,int) ;
 int ZB_ZIL_LEVEL ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SCRUB ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_SYNC_READ ;
 int arc_buf_destroy (TYPE_4__*,TYPE_4__**) ;
 int arc_buf_size (TYPE_4__*) ;
 int arc_getbuf_func ;
 int arc_read (int *,int ,int const*,int ,TYPE_4__**,int ,int,int *,int *) ;
 int bcopy (int ,void*,int ) ;
 int bzero (void*,int ) ;
 int dmu_objset_id (int ) ;

__attribute__((used)) static int
zil_read_log_data(zilog_t *zilog, const lr_write_t *lr, void *wbuf)
{
 enum zio_flag zio_flags = ZIO_FLAG_CANFAIL;
 const blkptr_t *bp = &lr->lr_blkptr;
 arc_flags_t aflags = ARC_FLAG_WAIT;
 arc_buf_t *abuf = ((void*)0);
 zbookmark_phys_t zb;
 int error;

 if (BP_IS_HOLE(bp)) {
  if (wbuf != ((void*)0))
   bzero(wbuf, MAX(BP_GET_LSIZE(bp), lr->lr_length));
  return (0);
 }

 if (zilog->zl_header->zh_claim_txg == 0)
  zio_flags |= ZIO_FLAG_SPECULATIVE | ZIO_FLAG_SCRUB;






 if (wbuf == ((void*)0))
  zio_flags |= ZIO_FLAG_RAW;

 SET_BOOKMARK(&zb, dmu_objset_id(zilog->zl_os), lr->lr_foid,
     ZB_ZIL_LEVEL, lr->lr_offset / BP_GET_LSIZE(bp));

 error = arc_read(((void*)0), zilog->zl_spa, bp, arc_getbuf_func, &abuf,
     ZIO_PRIORITY_SYNC_READ, zio_flags, &aflags, &zb);

 if (error == 0) {
  if (wbuf != ((void*)0))
   bcopy(abuf->b_data, wbuf, arc_buf_size(abuf));
  arc_buf_destroy(abuf, &abuf);
 }

 return (error);
}
