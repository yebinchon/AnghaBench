
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ blk64_t ;
typedef TYPE_1__* bb_u64_list ;
struct TYPE_3__ {scalar_t__ magic; int num; scalar_t__* list; } ;


 scalar_t__ BB_ET_MAGIC_BADBLOCKS_LIST ;

__attribute__((used)) static int bb_u64_list_find(bb_u64_list bb, blk64_t blk)
{
 int low, high, mid;

 if (bb->magic != BB_ET_MAGIC_BADBLOCKS_LIST)
  return -1;

 if (bb->num == 0)
  return -1;

 low = 0;
 high = bb->num-1;
 if (blk == bb->list[low])
  return low;
 if (blk == bb->list[high])
  return high;

 while (low < high) {
  mid = ((unsigned)low + (unsigned)high)/2;
  if (mid == low || mid == high)
   break;
  if (blk == bb->list[mid])
   return mid;
  if (blk < bb->list[mid])
   high = mid;
  else
   low = mid;
 }
 return -1;
}
