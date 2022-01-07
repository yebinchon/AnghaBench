
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct send_range {int type; int eos_marker; void* end_blkid; void* start_blkid; void* object; } ;
typedef enum type { ____Placeholder_type } type ;
typedef int boolean_t ;


 int KM_SLEEP ;
 struct send_range* kmem_alloc (int,int ) ;

__attribute__((used)) static struct send_range *
range_alloc(enum type type, uint64_t object, uint64_t start_blkid,
    uint64_t end_blkid, boolean_t eos)
{
 struct send_range *range = kmem_alloc(sizeof (*range), KM_SLEEP);
 range->type = type;
 range->object = object;
 range->start_blkid = start_blkid;
 range->end_blkid = end_blkid;
 range->eos_marker = eos;
 return (range);
}
