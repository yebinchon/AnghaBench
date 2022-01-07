
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* chunk_item; } ;
typedef TYPE_2__ chunk ;
struct TYPE_4__ {int type; } ;


 int BLOCK_FLAG_DUPLICATE ;
 int BLOCK_FLAG_RAID0 ;
 int BLOCK_FLAG_RAID1 ;
 int BLOCK_FLAG_RAID10 ;
 int BLOCK_FLAG_RAID5 ;
 int BLOCK_FLAG_RAID6 ;
 int BLOCK_FLAG_SINGLE ;

__attribute__((used)) static __inline uint64_t get_chunk_dup_type(chunk* c) {
    if (c->chunk_item->type & BLOCK_FLAG_RAID0)
        return BLOCK_FLAG_RAID0;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID1)
        return BLOCK_FLAG_RAID1;
    else if (c->chunk_item->type & BLOCK_FLAG_DUPLICATE)
        return BLOCK_FLAG_DUPLICATE;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID10)
        return BLOCK_FLAG_RAID10;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID5)
        return BLOCK_FLAG_RAID5;
    else if (c->chunk_item->type & BLOCK_FLAG_RAID6)
        return BLOCK_FLAG_RAID6;
    else
        return BLOCK_FLAG_SINGLE;
}
