
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ errcode_t ;


 scalar_t__ ENOMEM ;
 scalar_t__ EXT2_ET_NO_MEMORY ;
 scalar_t__ errno ;
 int free (void*) ;
 void* malloc (unsigned long) ;
 void* memalign (unsigned long,unsigned long) ;
 scalar_t__ posix_memalign (void**,unsigned long,unsigned long) ;
 void* valloc (unsigned long) ;

errcode_t ext2fs_get_memalign(unsigned long size,
         unsigned long align, void *ptr)
{
 errcode_t retval = 0;
 void **p = ptr;

 if (align < 8)
  align = 8;
  *p = malloc(size);
 if ((uintptr_t) *p & (align - 1)) {
  free(*p);
  *p = 0;
 }
 if (*p == 0)
  return EXT2_ET_NO_MEMORY;


 return retval;
}
