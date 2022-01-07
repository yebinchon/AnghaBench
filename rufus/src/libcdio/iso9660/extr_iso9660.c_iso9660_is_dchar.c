
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IN (int,int,int) ;

bool
iso9660_is_dchar (int c)
{
  if (!IN (c, 0x30, 0x5f)
      || IN (c, 0x3a, 0x40)
      || IN (c, 0x5b, 0x5e))
    return 0;

  return 1;
}
