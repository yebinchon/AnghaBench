
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmap_rb_extent {void* count; void* start; } ;
typedef void* __u64 ;


 int abort () ;
 int ext2fs_get_mem (int,struct bmap_rb_extent**) ;

__attribute__((used)) static void rb_get_new_extent(struct bmap_rb_extent **ext, __u64 start,
        __u64 count)
{
 struct bmap_rb_extent *new_ext;
 int retval;

 retval = ext2fs_get_mem(sizeof (struct bmap_rb_extent),
    &new_ext);
 if (retval)
  abort();

 new_ext->start = start;
 new_ext->count = count;
 *ext = new_ext;
}
