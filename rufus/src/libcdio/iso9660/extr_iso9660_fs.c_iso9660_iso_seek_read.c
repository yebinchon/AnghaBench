
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsn_t ;
typedef int iso9660_t ;


 int ISO_BLOCKSIZE ;
 long iso9660_seek_read_framesize (int const*,void*,int ,long,int ) ;

long int
iso9660_iso_seek_read (const iso9660_t *p_iso, void *ptr, lsn_t start,
         long int size)
{
  return iso9660_seek_read_framesize(p_iso, ptr, start, size, ISO_BLOCKSIZE);
}
