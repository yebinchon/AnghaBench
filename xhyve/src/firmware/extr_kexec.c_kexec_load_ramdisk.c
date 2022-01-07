
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {int version; size_t initrd_addr_max; size_t ramdisk_image; size_t ramdisk_size; } ;
struct zero_page {size_t ext_ramdisk_image; size_t ext_ramdisk_size; TYPE_1__ setup_header; } ;
struct TYPE_6__ {size_t size; scalar_t__ base; } ;
struct TYPE_5__ {size_t base; size_t size; } ;
typedef int FILE ;


 size_t ALIGNDOWN (size_t,int) ;
 scalar_t__ BASE_ZEROPAGE ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (void*,int,size_t,int *) ;
 int fseek (int *,long,int ) ;
 scalar_t__ ftell (int *) ;
 TYPE_3__ lowmem ;
 TYPE_2__ ramdisk ;

__attribute__((used)) static int
kexec_load_ramdisk(char *path) {
 uint64_t ramdisk_start;
 uint32_t initrd_max;
 volatile struct zero_page *zp;
 size_t sz;
 FILE *f;

 zp = ((struct zero_page *) (lowmem.base + BASE_ZEROPAGE));

 if (!(f = fopen(path, "r"))) {;
  return -1;
 }

 fseek(f, 0L, SEEK_END);
 sz = (size_t) ftell(f);
 fseek(f, 0, SEEK_SET);


 if (zp->setup_header.version >= 0x203) {
  initrd_max = zp->setup_header.initrd_addr_max;
 } else {
  initrd_max = 0x37ffffff;
 }

 if (initrd_max >= lowmem.size) {
  initrd_max = ((uint32_t) lowmem.size - 1);
 }

 ramdisk_start = ALIGNDOWN(initrd_max - sz, 0x1000ull);

 if ((ramdisk_start + sz) > lowmem.size) {

  fclose(f);
  return -1;
 }


 if (!fread(((void *) (lowmem.base + ramdisk_start)), 1, sz, f)) {
  fclose(f);
  return -1;
 }

 fclose(f);

 zp->setup_header.ramdisk_image = ((uint32_t) ramdisk_start);
 zp->ext_ramdisk_image = ((uint32_t) (ramdisk_start >> 32));
 zp->setup_header.ramdisk_size = ((uint32_t) sz);
 zp->ext_ramdisk_size = ((uint32_t) (sz >> 32));

 ramdisk.base = ramdisk_start;
 ramdisk.size = sz;

 return 0;
}
