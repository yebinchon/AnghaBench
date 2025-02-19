
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_6__ {int * z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ u_offset_t ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef int objset_t ;
typedef scalar_t__ loff_t ;
typedef int caddr_t ;


 int DMU_READ_PREFETCH ;
 int ECKSUM ;
 int EIO ;
 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 scalar_t__ PAGESIZE ;
 int PAGE_SHIFT ;
 int SET_ERROR (int ) ;
 int dmu_read (int *,int ,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 scalar_t__ page_offset (struct page*) ;

__attribute__((used)) static int
zfs_fillpage(struct inode *ip, struct page *pl[], int nr_pages)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 objset_t *os;
 struct page *cur_pp;
 u_offset_t io_off, total;
 size_t io_len;
 loff_t i_size;
 unsigned page_idx;
 int err;

 os = zfsvfs->z_os;
 io_len = nr_pages << PAGE_SHIFT;
 i_size = i_size_read(ip);
 io_off = page_offset(pl[0]);

 if (io_off + io_len > i_size)
  io_len = i_size - io_off;




 page_idx = 0;
 for (total = io_off + io_len; io_off < total; io_off += PAGESIZE) {
  caddr_t va;

  cur_pp = pl[page_idx++];
  va = kmap(cur_pp);
  err = dmu_read(os, zp->z_id, io_off, PAGESIZE, va,
      DMU_READ_PREFETCH);
  kunmap(cur_pp);
  if (err) {

   if (err == ECKSUM)
    err = SET_ERROR(EIO);
   return (err);
  }
 }

 return (0);
}
