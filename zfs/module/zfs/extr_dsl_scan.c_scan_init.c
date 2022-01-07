
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_io_t ;
typedef int dva_t ;


 int SPA_DVAS_PER_BP ;
 int fill_weight ;
 int kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int * sio_cache ;
 int sprintf (char*,char*,int) ;
 int zfs_scan_fill_weight ;

void
scan_init(void)
{
 fill_weight = zfs_scan_fill_weight;

 for (int i = 0; i < SPA_DVAS_PER_BP; i++) {
  char name[36];

  (void) sprintf(name, "sio_cache_%d", i);
  sio_cache[i] = kmem_cache_create(name,
      (sizeof (scan_io_t) + ((i + 1) * sizeof (dva_t))),
      0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
 }
}
