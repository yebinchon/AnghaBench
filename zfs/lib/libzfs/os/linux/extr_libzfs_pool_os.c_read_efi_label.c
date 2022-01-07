
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dk_gpt {TYPE_1__* efi_parts; } ;
typedef int nvlist_t ;
typedef int diskname ;
typedef int diskaddr_t ;
struct TYPE_2__ {int p_start; } ;


 char* DISK_ROOT ;
 int MAXPATHLEN ;
 int O_DIRECT ;
 int O_RDONLY ;
 int ZPOOL_CONFIG_PATH ;
 int close (int) ;
 int efi_alloc_and_read (int,struct dk_gpt**) ;
 int efi_free (struct dk_gpt*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strrchr (char*,char) ;

__attribute__((used)) static int
read_efi_label(nvlist_t *config, diskaddr_t *sb)
{
 char *path;
 int fd;
 char diskname[MAXPATHLEN];
 int err = -1;

 if (nvlist_lookup_string(config, ZPOOL_CONFIG_PATH, &path) != 0)
  return (err);

 (void) snprintf(diskname, sizeof (diskname), "%s%s", DISK_ROOT,
     strrchr(path, '/'));
 if ((fd = open(diskname, O_RDONLY|O_DIRECT)) >= 0) {
  struct dk_gpt *vtoc;

  if ((err = efi_alloc_and_read(fd, &vtoc)) >= 0) {
   if (sb != ((void*)0))
    *sb = vtoc->efi_parts[0].p_start;
   efi_free(vtoc);
  }
  (void) close(fd);
 }
 return (err);
}
