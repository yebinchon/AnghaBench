
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext3_extent_tail {int dummy; } ;
struct ext3_extent_header {int dummy; } ;


 int EXT3_EXTENT_TAIL_OFFSET (struct ext3_extent_header*) ;

__attribute__((used)) static struct ext3_extent_tail *get_extent_tail(struct ext3_extent_header *h)
{
 return (struct ext3_extent_tail *)(((char *)h) +
        EXT3_EXTENT_TAIL_OFFSET(h));
}
