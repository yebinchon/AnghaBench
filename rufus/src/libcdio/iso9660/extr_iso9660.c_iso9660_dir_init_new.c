
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;


 int iso9660_dir_init_new_su (void*,int ,int ,int *,int ,int ,int ,int *,int ,int const*) ;

void
iso9660_dir_init_new (void *dir,
                      uint32_t self,
                      uint32_t ssize,
                      uint32_t parent,
                      uint32_t psize,
                      const time_t *dir_time)
{
  iso9660_dir_init_new_su (dir, self, ssize, ((void*)0), 0, parent, psize, ((void*)0),
                           0, dir_time);
}
