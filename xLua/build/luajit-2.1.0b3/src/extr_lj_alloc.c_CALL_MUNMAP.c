
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int munmap (void*,size_t) ;

__attribute__((used)) static int CALL_MUNMAP(void *ptr, size_t size)
{
  int olderr = errno;
  int ret = munmap(ptr, size);
  errno = olderr;
  return ret;
}
