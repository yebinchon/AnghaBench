
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int iso_path_table_t ;


 int cdio_assert (int ) ;
 scalar_t__ from_711 (int const) ;

void
pathtable_get_size_and_entries (const void *pt,
                                unsigned int *size,
                                unsigned int *entries)
{
  const uint8_t *tmp = pt;
  unsigned int offset = 0;
  unsigned int count = 0;

  cdio_assert (pt != ((void*)0));

  while (from_711 (*tmp))
    {
      offset += sizeof (iso_path_table_t);
      offset += from_711 (*tmp);
      if (offset % 2)
        offset++;
      tmp = (uint8_t *)pt + offset;
      count++;
    }

  if (size)
    *size = offset;

  if (entries)
    *entries = count;
}
