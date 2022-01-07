
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct libfat_filesystem {int dummy; } ;
struct libfat_direntry {int* entry; } ;
typedef int iso9660_t ;
struct TYPE_9__ {TYPE_2__* psz_symlink; } ;
struct TYPE_10__ {TYPE_1__ rr; int **** lsn; int buf; int * p_iso; scalar_t__ sec_start; } ;
typedef TYPE_2__ iso9660_stat_t ;
typedef TYPE_2__ iso9660_readfat_private ;
typedef scalar_t__ int32_t ;
struct TYPE_11__ {char* efi_img_path; } ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (char**) ;
 scalar_t__ FALSE ;
 int HAS_EFI_IMG (TYPE_7__) ;
 int ISO_BLOCKSIZE ;
 int ISO_NB_BLOCKS ;
 scalar_t__ TRUE ;
 char** efi_bootname ;
 char* image_path ;
 TYPE_7__ img_report ;
 int iso9660_close (int *) ;
 TYPE_2__* iso9660_ifs_stat_translate (int *,char*) ;
 int iso9660_iso_seek_read (int *,int ,int ***,int) ;
 int * iso9660_open (char*) ;
 int iso9660_readfat ;
 int libfat_close (struct libfat_filesystem*) ;
 struct libfat_filesystem* libfat_open (int ,intptr_t) ;
 scalar_t__ libfat_searchdir (struct libfat_filesystem*,scalar_t__,char*,struct libfat_direntry*) ;
 TYPE_2__* malloc (int) ;
 int safe_free (TYPE_2__*) ;
 int strlen (char*) ;
 char toupper (char) ;
 int uprintf (char*,...) ;

BOOL HasEfiImgBootLoaders(void)
{
 BOOL ret = FALSE;
 iso9660_t* p_iso = ((void*)0);
 iso9660_stat_t* p_statbuf = ((void*)0);
 iso9660_readfat_private* p_private = ((void*)0);
 int32_t dc, c;
 struct libfat_filesystem *lf_fs = ((void*)0);
 struct libfat_direntry direntry;
 char name[12] = { 0 };
 int i, j, k;

 if ((image_path == ((void*)0)) || !HAS_EFI_IMG(img_report))
  return FALSE;

 p_iso = iso9660_open(image_path);
 if (p_iso == ((void*)0)) {
  uprintf("Could not open image '%s' as an ISO-9660 file system", image_path);
  goto out;
 }
 p_statbuf = iso9660_ifs_stat_translate(p_iso, img_report.efi_img_path);
 if (p_statbuf == ((void*)0)) {
  uprintf("Could not get ISO-9660 file information for file %s\n", img_report.efi_img_path);
  goto out;
 }
 p_private = malloc(sizeof(iso9660_readfat_private));
 if (p_private == ((void*)0))
  goto out;
 p_private->p_iso = p_iso;
 p_private->lsn = p_statbuf->lsn[0];
 p_private->sec_start = 0;

 if (iso9660_iso_seek_read(p_private->p_iso, p_private->buf, p_private->lsn, ISO_NB_BLOCKS) != ISO_NB_BLOCKS * ISO_BLOCKSIZE) {
  uprintf("Error reading ISO-9660 file %s at LSN %lu\n", img_report.efi_img_path, (long unsigned int)p_private->lsn);
  goto out;
 }
 lf_fs = libfat_open(iso9660_readfat, (intptr_t)p_private);
 if (lf_fs == ((void*)0)) {
  uprintf("FAT access error");
  goto out;
 }


 if (libfat_searchdir(lf_fs, 0, "EFI        ", &direntry) < 0)
  goto out;
 dc = direntry.entry[26] + (direntry.entry[27] << 8);
 if (libfat_searchdir(lf_fs, dc, "BOOT       ", &direntry) < 0)
  goto out;
 dc = direntry.entry[26] + (direntry.entry[27] << 8);

 for (i = 0; i < ARRAYSIZE(efi_bootname); i++) {

  if (strlen(efi_bootname[i]) > 12) {
   uprintf("Internal error: FAT 8.3");
   continue;
  }
  for (j = 0, k = 0; efi_bootname[i][j] != 0; j++) {
   if (efi_bootname[i][j] == '.') {
    while (k < 8)
     name[k++] = ' ';
   } else
    name[k++] = toupper(efi_bootname[i][j]);
  }
  c = libfat_searchdir(lf_fs, dc, name, &direntry);
  if (c > 0) {
   if (!ret)
    uprintf("  Detected EFI bootloader(s) (from '%s'):", img_report.efi_img_path);
   uprintf("  ● '%s'", efi_bootname[i]);
   ret = TRUE;
  }
 }

out:
 if (lf_fs != ((void*)0))
  libfat_close(lf_fs);
 if (p_statbuf != ((void*)0))
  safe_free(p_statbuf->rr.psz_symlink);
 safe_free(p_statbuf);
 safe_free(p_private);
 if (p_iso != ((void*)0))
  iso9660_close(p_iso);
 return ret;
}
