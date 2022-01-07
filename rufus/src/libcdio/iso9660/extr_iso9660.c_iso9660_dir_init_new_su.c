
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;


 int ISO_BLOCKSIZE ;
 int ISO_DIRECTORY ;
 int cdio_assert (int) ;
 int iso9660_dir_add_entry_su (void*,char*,int,int,int ,void const*,unsigned int,int const*) ;
 int memset (void*,int ,int) ;

void
iso9660_dir_init_new_su (void *dir,
                         uint32_t self,
                         uint32_t ssize,
                         const void *ssu_data,
                         unsigned int ssu_size,
                         uint32_t parent,
                         uint32_t psize,
                         const void *psu_data,
                         unsigned int psu_size,
                         const time_t *dir_time)
{
  cdio_assert (ssize > 0 && !(ssize % ISO_BLOCKSIZE));
  cdio_assert (psize > 0 && !(psize % ISO_BLOCKSIZE));
  cdio_assert (dir != ((void*)0));

  memset (dir, 0, ssize);


  iso9660_dir_add_entry_su (dir, "\0", self, ssize, ISO_DIRECTORY, ssu_data,
                            ssu_size, dir_time);

  iso9660_dir_add_entry_su (dir, "\1", parent, psize, ISO_DIRECTORY, psu_data,
                            psu_size, dir_time);
}
