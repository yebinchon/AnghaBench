
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdio_assert (int ) ;

size_t
_cdio_strlenv(char **str_array)
{
  size_t n = 0;

  cdio_assert (str_array != ((void*)0));

  while(str_array[n])
    n++;

  return n;
}
