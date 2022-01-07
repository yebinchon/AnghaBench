
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int stamp ;
struct TYPE_3__ {int* pstcache_fd; int pstcache_Bpp; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int CELLHEADER ;


 int BMPCACHE2_NUM_PSTCELLS ;
 int IS_PERSISTENT (size_t) ;
 int MAX_CELL_SIZE ;
 int rd_lseek_file (int,int) ;
 int rd_write_file (int,int *,int) ;

void
pstcache_touch_bitmap(RDPCLIENT * This, uint8 cache_id, uint16 cache_idx, uint32 stamp)
{
 int fd;

 if (!IS_PERSISTENT(cache_id) || cache_idx >= BMPCACHE2_NUM_PSTCELLS)
  return;

 fd = This->pstcache_fd[cache_id];
 rd_lseek_file(fd, 12 + cache_idx * (This->pstcache_Bpp * MAX_CELL_SIZE + sizeof(CELLHEADER)));
 rd_write_file(fd, &stamp, sizeof(stamp));
}
