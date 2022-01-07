
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* zb_blkid; scalar_t__ zb_level; void* zb_object; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef void* uint64_t ;



__attribute__((used)) static inline void
create_zbookmark_from_obj_off(zbookmark_phys_t *zb, uint64_t object,
    uint64_t blkid)
{
 zb->zb_object = object;
 zb->zb_level = 0;
 zb->zb_blkid = blkid;
}
