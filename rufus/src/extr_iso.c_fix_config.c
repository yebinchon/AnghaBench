
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int usb_label; int label; int has_efi_syslinux; } ;
struct TYPE_5__ {scalar_t__ is_grub_cfg; scalar_t__ is_syslinux_cfg; scalar_t__ is_conf; scalar_t__ is_cfg; scalar_t__ is_menu_cfg; } ;
typedef TYPE_1__ EXTRACT_PROPS ;


 scalar_t__ BT_IMAGE ;
 int CopyFileA (char*,char*,int ) ;
 scalar_t__ HAS_PERSISTENCE (TYPE_2__) ;
 int MAX_PATH ;
 int TRUE ;
 scalar_t__ boot_type ;
 int efi_dirname ;
 int free (char*) ;
 TYPE_2__ img_report ;
 char* malloc (int ) ;
 scalar_t__ persistence_size ;
 char* replace_char (int ,char,char*) ;
 int * replace_in_token_data (char*,char*,char*,char*,int ) ;
 int safe_free (char*) ;
 int safe_sprintf (char*,int ,char*,int ) ;
 char* safe_strdup (char const*) ;
 scalar_t__ safe_stricmp (char const*,int ) ;
 size_t safe_strlen (char const*) ;
 int * syslinux_cfg ;
 int uprintf (char*,...) ;

__attribute__((used)) static void fix_config(const char* psz_fullpath, const char* psz_path, const char* psz_basename, EXTRACT_PROPS* props)
{
 size_t i, nul_pos;
 char *iso_label = ((void*)0), *usb_label = ((void*)0), *src, *dst;

 nul_pos = safe_strlen(psz_fullpath);
 src = safe_strdup(psz_fullpath);
 if (src == ((void*)0))
  return;
 for (i=0; i<nul_pos; i++)
  if (src[i] == '/') src[i] = '\\';


 if ((boot_type == BT_IMAGE) && HAS_PERSISTENCE(img_report) && persistence_size) {
  if ((props->is_grub_cfg) || (props->is_menu_cfg) || (props->is_syslinux_cfg)) {


   if (replace_in_token_data(src, props->is_grub_cfg ? "linux" : "append",
    props->is_grub_cfg ? "/casper/vmlinuz" : "initrd=/casper/initrd",

    props->is_grub_cfg ? "/casper/vmlinuz persistent" : "persistent initrd=/casper/initrd", TRUE) != ((void*)0))
    uprintf("  Added 'persistent' kernel option");


   else if (replace_in_token_data(src, props->is_grub_cfg ? "linux" : "append",
    "boot=live", "boot=live persistence", TRUE) != ((void*)0))
    uprintf("  Added 'persistence' kernel option");





  }
 }



 if ((props->is_cfg) || (props->is_conf)) {
  iso_label = replace_char(img_report.label, ' ', "\\x20");
  usb_label = replace_char(img_report.usb_label, ' ', "\\x20");
  if ((iso_label != ((void*)0)) && (usb_label != ((void*)0))) {
   if (props->is_grub_cfg) {

    if ((replace_in_token_data(src, "linux", iso_label, usb_label, TRUE) != ((void*)0)) ||
     (replace_in_token_data(src, "linuxefi", iso_label, usb_label, TRUE) != ((void*)0)))
     uprintf("  Patched %s: '%s' ➔ '%s'\n", src, iso_label, usb_label);
   }
   else if (replace_in_token_data(src, (props->is_conf) ? "options" : "append",
    iso_label, usb_label, TRUE) != ((void*)0))
    uprintf("  Patched %s: '%s' ➔ '%s'\n", src, iso_label, usb_label);
  }
  safe_free(iso_label);
  safe_free(usb_label);
 }


 if ( (props->is_syslinux_cfg) && (safe_stricmp(psz_path, efi_dirname) == 0) &&
   (safe_stricmp(psz_basename, syslinux_cfg[0]) == 0) &&
   (!img_report.has_efi_syslinux) && (dst = safe_strdup(src)) ) {
  dst[nul_pos-12] = 's'; dst[nul_pos-11] = 'y'; dst[nul_pos-10] = 's';
  CopyFileA(src, dst, TRUE);
  uprintf("Duplicated %s to %s\n", src, dst);
  free(dst);
 }


 if (props->is_grub_cfg) {
  iso_label = malloc(MAX_PATH);
  usb_label = malloc(MAX_PATH);
  if ((iso_label != ((void*)0)) && (usb_label != ((void*)0))) {
   safe_sprintf(iso_label, MAX_PATH, "cd9660:/dev/iso9660/%s", img_report.label);
   safe_sprintf(usb_label, MAX_PATH, "msdosfs:/dev/msdosfs/%s", img_report.usb_label);
   if (replace_in_token_data(src, "set", iso_label, usb_label, TRUE) != ((void*)0))
    uprintf("  Patched %s: '%s' ➔ '%s'\n", src, iso_label, usb_label);
  }
  safe_free(iso_label);
  safe_free(usb_label);
 }

 free(src);
}
