
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int udf_t ;
typedef int udf_dirent_t ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ is_cfg; scalar_t__* is_old_c32; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ EXTRACT_PROPS ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 scalar_t__ CopyFileU (char*,char*,int ) ;
 scalar_t__ CreateFileU (char*,int,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FALSE ;
 int FILES_DIR ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 scalar_t__ FormatStatus ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 int IGNORE_RETVAL (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ISO_BLOCKING (int ) ;
 scalar_t__ IsFileInDB (char*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int MSG_231 ;
 size_t NB_OLD_C32 ;
 int OP_FILE_COPY ;
 int PROGRESS_THRESHOLD ;
 int SetFileTime (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int UDF_BLOCKSIZE ;
 int UpdateProgressWithInfo (int ,int ,int ,int ) ;
 int UpdateProgressWithInfoInit (int *,int ) ;
 int WRITE_RETRIES ;
 char* WindowsErrorString () ;
 int WriteFileWithRetry (scalar_t__,int *,scalar_t__,scalar_t__*,int ) ;
 int _mkdirU (char*) ;
 int _snprintf (char*,int,char*,char const*,char const*,char const*) ;
 int autorun_name ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ check_iso_props (char const*,scalar_t__,char const*,char*,TYPE_1__*) ;
 int * embedded_sl_version_str ;
 int fix_config (char*,char const*,char const*,TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int nb_blocks ;
 int * old_c32_name ;
 int preallocate_filesize (scalar_t__,scalar_t__) ;
 scalar_t__ preserve_timestamps ;
 int print_extracted_file (char*,scalar_t__) ;
 char const* psz_extract_dir ;
 int safe_closehandle (scalar_t__) ;
 int safe_free (char*) ;
 scalar_t__ safe_strcmp (char*,int ) ;
 char* sanitize_filename (char*,int *) ;
 int scan_only ;
 int set_directory_timestamp (char*,int ,int ,int ) ;
 int static_sprintf (char*,char*,int ,int ,int ) ;
 size_t strlen (char const*) ;
 int stupid_antivirus ;
 int to_filetime (int ) ;
 int total_blocks ;
 int udf_dirent_free (int *) ;
 int udf_get_access_time (int *) ;
 int udf_get_attribute_time (int *) ;
 scalar_t__ udf_get_file_length (int *) ;
 char* udf_get_filename (int *) ;
 int udf_get_modification_time (int *) ;
 scalar_t__ udf_is_dir (int *) ;
 int * udf_opendir (int *) ;
 scalar_t__ udf_read_block (int *,int *,int) ;
 int * udf_readdir (int *) ;
 int uprintf (char*,...) ;
 scalar_t__* use_own_c32 ;

__attribute__((used)) static int udf_extract_files(udf_t *p_udf, udf_dirent_t *p_udf_dirent, const char *psz_path)
{
 HANDLE file_handle = ((void*)0);
 DWORD buf_size, wr_size, err;
 EXTRACT_PROPS props;
 BOOL r, is_identical;
 int length;
 size_t i;
 char tmp[128], *psz_fullpath = ((void*)0), *psz_sanpath = ((void*)0);
 const char* psz_basename;
 udf_dirent_t *p_udf_dirent2;
 uint8_t buf[UDF_BLOCKSIZE];
 int64_t read, file_length;

 if ((p_udf_dirent == ((void*)0)) || (psz_path == ((void*)0)))
  return 1;

 if (psz_path[0] == 0)
  UpdateProgressWithInfoInit(((void*)0), TRUE);
 while ((p_udf_dirent = udf_readdir(p_udf_dirent)) != ((void*)0)) {
  if (FormatStatus) goto out;
  psz_basename = udf_get_filename(p_udf_dirent);
  if (strlen(psz_basename) == 0)
   continue;
  length = (int)(3 + strlen(psz_path) + strlen(psz_basename) + strlen(psz_extract_dir) + 24);
  psz_fullpath = (char*)calloc(sizeof(char), length);
  if (psz_fullpath == ((void*)0)) {
   uprintf("Error allocating file name");
   goto out;
  }
  length = _snprintf(psz_fullpath, length, "%s%s/%s", psz_extract_dir, psz_path, psz_basename);
  if (length < 0) {
   goto out;
  }
  if (udf_is_dir(p_udf_dirent)) {
   if (!scan_only) {
    psz_sanpath = sanitize_filename(psz_fullpath, &is_identical);
    IGNORE_RETVAL(_mkdirU(psz_sanpath));
    if (preserve_timestamps) {
     set_directory_timestamp(psz_sanpath, to_filetime(udf_get_attribute_time(p_udf_dirent)),
      to_filetime(udf_get_access_time(p_udf_dirent)), to_filetime(udf_get_modification_time(p_udf_dirent)));
    }
    safe_free(psz_sanpath);
   }
   p_udf_dirent2 = udf_opendir(p_udf_dirent);
   if (p_udf_dirent2 != ((void*)0)) {
    if (udf_extract_files(p_udf, p_udf_dirent2, &psz_fullpath[strlen(psz_extract_dir)]))
     goto out;
   }
  } else {
   file_length = udf_get_file_length(p_udf_dirent);
   if (check_iso_props(psz_path, file_length, psz_basename, psz_fullpath, &props)) {
    safe_free(psz_fullpath);
    continue;
   }
   print_extracted_file(psz_fullpath, file_length);
   for (i=0; i<NB_OLD_C32; i++) {
    if (props.is_old_c32[i] && use_own_c32[i]) {
     static_sprintf(tmp, "%s/syslinux-%s/%s", FILES_DIR, embedded_sl_version_str[0], old_c32_name[i]);
     if (CopyFileU(tmp, psz_fullpath, FALSE)) {
      uprintf("  Replaced with local version %s", IsFileInDB(tmp)?"✓":"✗");
      break;
     }
     uprintf("  Could not replace file: %s", WindowsErrorString());
    }
   }
   if (i < NB_OLD_C32)
    continue;
   psz_sanpath = sanitize_filename(psz_fullpath, &is_identical);
   if (!is_identical)
    uprintf("  File name sanitized to '%s'", psz_sanpath);
   file_handle = CreateFileU(psz_sanpath, GENERIC_READ | GENERIC_WRITE,
    FILE_SHARE_READ, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
   if (file_handle == INVALID_HANDLE_VALUE) {
    err = GetLastError();
    uprintf("  Unable to create file: %s", WindowsErrorString());
    if ((err == ERROR_ACCESS_DENIED) && (safe_strcmp(&psz_sanpath[3], autorun_name) == 0))
     uprintf(stupid_antivirus);
    else
     goto out;
   } else {
    preallocate_filesize(file_handle, file_length);
    while (file_length > 0) {
     if (FormatStatus) goto out;
     memset(buf, 0, UDF_BLOCKSIZE);
     read = udf_read_block(p_udf_dirent, buf, 1);
     if (read < 0) {
      uprintf("  Error reading UDF file %s", &psz_fullpath[strlen(psz_extract_dir)]);
      goto out;
     }
     buf_size = (DWORD)MIN(file_length, read);
     ISO_BLOCKING(r = WriteFileWithRetry(file_handle, buf, buf_size, &wr_size, WRITE_RETRIES));
     if (!r) {
      uprintf("  Error writing file: %s", WindowsErrorString());
      goto out;
     }
     file_length -= read;
     if (nb_blocks++ % PROGRESS_THRESHOLD == 0)
      UpdateProgressWithInfo(OP_FILE_COPY, MSG_231, nb_blocks, total_blocks);
    }
   }
   if ((preserve_timestamps) && (!SetFileTime(file_handle, to_filetime(udf_get_attribute_time(p_udf_dirent)),
    to_filetime(udf_get_access_time(p_udf_dirent)), to_filetime(udf_get_modification_time(p_udf_dirent)))))
    uprintf("  Could not set timestamp: %s", WindowsErrorString());






   ISO_BLOCKING(safe_closehandle(file_handle));
   if (props.is_cfg)
    fix_config(psz_sanpath, psz_path, psz_basename, &props);
   safe_free(psz_sanpath);
  }
  safe_free(psz_fullpath);
 }
 return 0;

out:
 if (p_udf_dirent != ((void*)0))
  udf_dirent_free(p_udf_dirent);
 ISO_BLOCKING(safe_closehandle(file_handle));
 safe_free(psz_sanpath);
 safe_free(psz_fullpath);
 return 1;
}
