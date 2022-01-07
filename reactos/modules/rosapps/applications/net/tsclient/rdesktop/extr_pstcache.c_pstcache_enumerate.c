
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
typedef int sint16 ;
struct TYPE_8__ {scalar_t__ stamp; int key; } ;
struct TYPE_7__ {int* pstcache_fd; int pstcache_Bpp; int server_depth; scalar_t__ pstcache_enumerated; scalar_t__ bitmap_cache_precache; scalar_t__ bitmap_cache_persist_enable; scalar_t__ bitmap_cache; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int HASH_KEY ;
typedef TYPE_2__ CELLHEADER ;


 int BMPCACHE2_NUM_PSTCELLS ;
 int DEBUG_RDP5 (char*) ;
 scalar_t__ IS_PERSISTENT (size_t) ;
 int MAX_CELL_SIZE ;
 scalar_t__ True ;
 int cache_rebuild_bmpcache_linked_list (TYPE_1__*,size_t,int*,int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int pstcache_load_bitmap (TYPE_1__*,size_t,int) ;
 int rd_lseek_file (int,int) ;
 scalar_t__ rd_read_file (int,TYPE_2__*,int) ;
 int zero_key ;

int
pstcache_enumerate(RDPCLIENT * This, uint8 id, HASH_KEY * keylist)
{
 int fd, n;
 uint16 idx;
 sint16 mru_idx[0xa00];
 uint32 mru_stamp[0xa00];
 CELLHEADER cellhdr;

 if (!(This->bitmap_cache && This->bitmap_cache_persist_enable && IS_PERSISTENT(id)))
  return 0;


 if (This->pstcache_enumerated)
  return 0;

 DEBUG_RDP5(("Persistent bitmap cache enumeration... "));
 for (idx = 0; idx < BMPCACHE2_NUM_PSTCELLS; idx++)
 {
  fd = This->pstcache_fd[id];
  rd_lseek_file(fd, idx * (This->pstcache_Bpp * MAX_CELL_SIZE + sizeof(CELLHEADER)));
  if (rd_read_file(fd, &cellhdr, sizeof(CELLHEADER)) <= 0)
   break;

  if (memcmp(cellhdr.key, zero_key, sizeof(HASH_KEY)) != 0)
  {
   memcpy(keylist[idx], cellhdr.key, sizeof(HASH_KEY));


   if (This->bitmap_cache_precache && cellhdr.stamp && This->server_depth > 8)
    pstcache_load_bitmap(This, id, idx);


   for (n = idx; n > 0 && cellhdr.stamp < mru_stamp[n - 1]; n--)
   {
    mru_idx[n] = mru_idx[n - 1];
    mru_stamp[n] = mru_stamp[n - 1];
   }

   mru_idx[n] = idx;
   mru_stamp[n] = cellhdr.stamp;
  }
  else
  {
   break;
  }
 }

 DEBUG_RDP5(("%d cached bitmaps.\n", idx));

 cache_rebuild_bmpcache_linked_list(This, id, mru_idx, idx);
 This->pstcache_enumerated = True;
 return idx;
}
