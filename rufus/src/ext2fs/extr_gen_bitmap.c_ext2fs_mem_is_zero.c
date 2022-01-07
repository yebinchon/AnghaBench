
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero_buf ;


 scalar_t__ memcmp (char const*,char const*,size_t) ;

int ext2fs_mem_is_zero(const char *mem, size_t len)
{
 static const char zero_buf[256];

 while (len >= sizeof(zero_buf)) {
  if (memcmp(mem, zero_buf, sizeof(zero_buf)))
   return 0;
  len -= sizeof(zero_buf);
  mem += sizeof(zero_buf);
 }

 if (len)
  return !memcmp(mem, zero_buf, len);
 return 1;
}
