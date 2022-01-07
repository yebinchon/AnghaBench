
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;
 int cdio_assert (int ) ;
 int memcpy (void*,void const*,size_t) ;

void *
_cdio_memdup (const void *mem, size_t count)
{
  void *new_mem = ((void*)0);

  if (mem)
    {
      new_mem = calloc (1, count);
      cdio_assert (new_mem != ((void*)0));
      memcpy (new_mem, mem, count);
    }

  return new_mem;
}
