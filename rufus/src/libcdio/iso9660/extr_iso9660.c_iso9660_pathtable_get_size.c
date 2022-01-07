
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pathtable_get_size_and_entries (void const*,unsigned int*,int *) ;

unsigned int
iso9660_pathtable_get_size (const void *pt)
{
  unsigned int size = 0;
  pathtable_get_size_and_entries (pt, &size, ((void*)0));
  return size;
}
