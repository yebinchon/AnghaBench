
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zpool_start_block; int zpool_config; } ;
typedef TYPE_2__ zpool_handle_t ;
typedef scalar_t__ uint64_t ;
struct dk_gpt {scalar_t__ efi_last_u_lba; TYPE_1__* efi_parts; } ;
typedef int path ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef scalar_t__ diskaddr_t ;
struct TYPE_4__ {size_t p_size; int p_tag; scalar_t__ p_start; int p_name; } ;


 int BLKFLSBUF ;
 int DISK_LABEL_WAIT ;
 char* DISK_ROOT ;
 size_t EFI_MIN_RESV_SIZE ;
 int EFI_NUMPAR ;
 int EFI_PART_NAME_LEN ;
 scalar_t__ ENOMEM ;
 int EZFS_LABELFAILED ;
 int EZFS_NOCAP ;
 int EZFS_OPENFAILED ;
 scalar_t__ MAXOFFSET_T ;
 int MAXPATHLEN ;
 scalar_t__ NEW_START_BLOCK ;
 int O_DIRECT ;
 int O_EXCL ;
 int O_RDWR ;
 scalar_t__ P2ALIGN (scalar_t__,int ) ;
 int PARTITION_END_ALIGNMENT ;
 int TEXT_DOMAIN ;
 int V_RESERVED ;
 int V_USR ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int close (int) ;
 char* dgettext (int ,char*) ;
 scalar_t__ efi_alloc_and_init (int,int ,struct dk_gpt**) ;
 int efi_free (struct dk_gpt*) ;
 int efi_rescan (int) ;
 int efi_write (int,struct dk_gpt*) ;
 scalar_t__ errno ;
 scalar_t__ find_start_block (int *) ;
 int fsync (int) ;
 int ioctl (int,int ) ;
 int no_memory (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,char*,...) ;
 int verify (int) ;
 int zfs_append_partition (char*,int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zpool_label_disk_check (char*) ;
 int zpool_label_disk_wait (char*,int ) ;
 int zpool_label_name (int ,int ) ;

int
zpool_label_disk(libzfs_handle_t *hdl, zpool_handle_t *zhp, char *name)
{
 char path[MAXPATHLEN];
 struct dk_gpt *vtoc;
 int rval, fd;
 size_t resv = EFI_MIN_RESV_SIZE;
 uint64_t slice_size;
 diskaddr_t start_block;
 char errbuf[1024];


 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot label '%s'"), name);

 if (zhp) {
  nvlist_t *nvroot;

  verify(nvlist_lookup_nvlist(zhp->zpool_config,
      ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);

  if (zhp->zpool_start_block == 0)
   start_block = find_start_block(nvroot);
  else
   start_block = zhp->zpool_start_block;
  zhp->zpool_start_block = start_block;
 } else {

  start_block = NEW_START_BLOCK;
 }

 (void) snprintf(path, sizeof (path), "%s/%s", DISK_ROOT, name);

 if ((fd = open(path, O_RDWR|O_DIRECT|O_EXCL)) < 0) {




  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "cannot "
      "label '%s': unable to open device: %d"), path, errno);
  return (zfs_error(hdl, EZFS_OPENFAILED, errbuf));
 }

 if (efi_alloc_and_init(fd, EFI_NUMPAR, &vtoc) != 0) {




  if (errno == ENOMEM)
   (void) no_memory(hdl);

  (void) close(fd);
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "cannot "
      "label '%s': unable to read disk capacity"), path);

  return (zfs_error(hdl, EZFS_NOCAP, errbuf));
 }

 slice_size = vtoc->efi_last_u_lba + 1;
 slice_size -= EFI_MIN_RESV_SIZE;
 if (start_block == MAXOFFSET_T)
  start_block = NEW_START_BLOCK;
 slice_size -= start_block;
 slice_size = P2ALIGN(slice_size, PARTITION_END_ALIGNMENT);

 vtoc->efi_parts[0].p_start = start_block;
 vtoc->efi_parts[0].p_size = slice_size;
 vtoc->efi_parts[0].p_tag = V_USR;
 zpool_label_name(vtoc->efi_parts[0].p_name, EFI_PART_NAME_LEN);

 vtoc->efi_parts[8].p_start = slice_size + start_block;
 vtoc->efi_parts[8].p_size = resv;
 vtoc->efi_parts[8].p_tag = V_RESERVED;

 rval = efi_write(fd, vtoc);


 (void) fsync(fd);
 (void) ioctl(fd, BLKFLSBUF);

 if (rval == 0)
  rval = efi_rescan(fd);






 if (rval != 0) {
  (void) close(fd);
  efi_free(vtoc);

  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "try using "
      "parted(8) and then provide a specific slice: %d"), rval);
  return (zfs_error(hdl, EZFS_LABELFAILED, errbuf));
 }

 (void) close(fd);
 efi_free(vtoc);

 (void) snprintf(path, sizeof (path), "%s/%s", DISK_ROOT, name);
 (void) zfs_append_partition(path, MAXPATHLEN);


 rval = zpool_label_disk_wait(path, DISK_LABEL_WAIT);
 if (rval) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "failed to "
      "detect device partitions on '%s': %d"), path, rval);
  return (zfs_error(hdl, EZFS_LABELFAILED, errbuf));
 }


 (void) snprintf(path, sizeof (path), "%s/%s", DISK_ROOT, name);
 rval = zpool_label_disk_check(path);
 if (rval) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "freshly written "
      "EFI label on '%s' is damaged.  Ensure\nthis device "
      "is not in use, and is functioning properly: %d"),
      path, rval);
  return (zfs_error(hdl, EZFS_LABELFAILED, errbuf));
 }
 return (0);
}
