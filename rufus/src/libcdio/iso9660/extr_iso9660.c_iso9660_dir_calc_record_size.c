
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_dir_t ;



unsigned int
iso9660_dir_calc_record_size(unsigned int namelen, unsigned int su_len)
{
  unsigned int length;

  length = sizeof(iso9660_dir_t);
  length += namelen;
  if (length % 2)
    length++;
  length += su_len;
  if (length % 2)
    length++;

  return length;
}
