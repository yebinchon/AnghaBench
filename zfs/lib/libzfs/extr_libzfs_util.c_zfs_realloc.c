
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int bzero (char*,size_t) ;
 int no_memory (int *) ;
 void* realloc (void*,size_t) ;

void *
zfs_realloc(libzfs_handle_t *hdl, void *ptr, size_t oldsize, size_t newsize)
{
 void *ret;

 if ((ret = realloc(ptr, newsize)) == ((void*)0)) {
  (void) no_memory(hdl);
  return (((void*)0));
 }

 bzero((char *)ret + oldsize, (newsize - oldsize));
 return (ret);
}
