
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso_path_table_t ;


 int ISO_BLOCKSIZE ;
 int cdio_assert (int) ;
 int memset (void*,int ,int ) ;

void
iso9660_pathtable_init (void *pt)
{
  cdio_assert (sizeof (iso_path_table_t) == 8);

  cdio_assert (pt != ((void*)0));

  memset (pt, 0, ISO_BLOCKSIZE);
}
