
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int64_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {scalar_t__ db_offset; int db_size; scalar_t__ db_data; } ;
typedef TYPE_1__ dmu_buf_t ;


 int ASSERT (int) ;
 scalar_t__ MIN (int,scalar_t__) ;
 int dmu_buf_fill_done (TYPE_1__*,int *) ;
 int dmu_buf_will_dirty (TYPE_1__*,int *) ;
 int dmu_buf_will_fill (TYPE_1__*,int *) ;
 int memcpy (char*,void const*,scalar_t__) ;

__attribute__((used)) static void
dmu_write_impl(dmu_buf_t **dbp, int numbufs, uint64_t offset, uint64_t size,
    const void *buf, dmu_tx_t *tx)
{
 int i;

 for (i = 0; i < numbufs; i++) {
  uint64_t tocpy;
  int64_t bufoff;
  dmu_buf_t *db = dbp[i];

  ASSERT(size > 0);

  bufoff = offset - db->db_offset;
  tocpy = MIN(db->db_size - bufoff, size);

  ASSERT(i == 0 || i == numbufs-1 || tocpy == db->db_size);

  if (tocpy == db->db_size)
   dmu_buf_will_fill(db, tx);
  else
   dmu_buf_will_dirty(db, tx);

  (void) memcpy((char *)db->db_data + bufoff, buf, tocpy);

  if (tocpy == db->db_size)
   dmu_buf_fill_done(db, tx);

  offset += tocpy;
  size -= tocpy;
  buf = (char *)buf + tocpy;
 }
}
