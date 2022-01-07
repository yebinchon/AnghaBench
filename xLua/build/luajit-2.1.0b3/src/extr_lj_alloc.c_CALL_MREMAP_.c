
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 void* mremap (void*,size_t,size_t,int) ;

__attribute__((used)) static void *CALL_MREMAP_(void *ptr, size_t osz, size_t nsz, int flags)
{
  int olderr = errno;
  ptr = mremap(ptr, osz, nsz, flags);
  errno = olderr;
  return ptr;
}
