
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FKIOCTL ;
 int copyin (void const*,void*,size_t) ;
 int memcpy (void*,void const*,size_t) ;

int
ddi_copyin(const void *from, void *to, size_t len, int flags)
{

 if (flags & FKIOCTL) {
  memcpy(to, from, len);
  return (0);
 }

 return (copyin(from, to, len));
}
