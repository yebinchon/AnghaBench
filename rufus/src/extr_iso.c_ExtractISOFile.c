
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int udf_t ;
typedef int udf_dirent_t ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ lsn_t ;
typedef int iso9660_t ;
struct TYPE_5__ {TYPE_2__* psz_symlink; } ;
struct TYPE_6__ {size_t extents; scalar_t__* extsize; TYPE_1__ rr; scalar_t__* lsn; } ;
typedef TYPE_2__ iso9660_stat_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileU (char const*,int,int ,int *,int ,scalar_t__,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ ISO_BLOCKSIZE ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int UDF_BLOCKSIZE ;
 int WRITE_RETRIES ;
 unsigned long WindowsErrorString () ;
 int WriteFileWithRetry (scalar_t__,char*,scalar_t__,scalar_t__*,int ) ;
 int iso9660_close (int *) ;
 TYPE_2__* iso9660_ifs_stat_translate (int *,char const*) ;
 scalar_t__ iso9660_iso_seek_read (int *,char*,scalar_t__,int) ;
 int * iso9660_open (char const*) ;
 int memset (char*,int ,scalar_t__) ;
 int safe_closehandle (scalar_t__) ;
 int safe_free (TYPE_2__*) ;
 int udf_close (int *) ;
 int udf_dirent_free (int *) ;
 int * udf_fopen (int *,char const*) ;
 scalar_t__ udf_get_file_length (int *) ;
 int * udf_get_root (int *,int,int ) ;
 int * udf_open (char const*) ;
 scalar_t__ udf_read_block (int *,char*,int) ;
 int uprintf (char*,...) ;

int64_t ExtractISOFile(const char* iso, const char* iso_file, const char* dest_file, DWORD attributes)
{
 size_t i, j;
 ssize_t read_size;
 int64_t file_length, extent_length, r = 0;
 char buf[UDF_BLOCKSIZE];
 DWORD buf_size, wr_size;
 iso9660_t* p_iso = ((void*)0);
 udf_t* p_udf = ((void*)0);
 udf_dirent_t *p_udf_root = ((void*)0), *p_udf_file = ((void*)0);
 iso9660_stat_t *p_statbuf = ((void*)0);
 lsn_t lsn;
 HANDLE file_handle = INVALID_HANDLE_VALUE;

 file_handle = CreateFileU(dest_file, GENERIC_READ | GENERIC_WRITE,
  FILE_SHARE_READ, ((void*)0), CREATE_ALWAYS, attributes, ((void*)0));
 if (file_handle == INVALID_HANDLE_VALUE) {
  uprintf("  Could not create file %s: %s", dest_file, WindowsErrorString());
  goto out;
 }


 p_udf = udf_open(iso);
 if (p_udf == ((void*)0))
  goto try_iso;

 p_udf_root = udf_get_root(p_udf, 1, 0);
 if (p_udf_root == ((void*)0)) {
  uprintf("Could not locate UDF root directory");
  goto out;
 }
 p_udf_file = udf_fopen(p_udf_root, iso_file);
 if (!p_udf_file) {
  uprintf("Could not locate file %s in ISO image", iso_file);
  goto out;
 }
 file_length = udf_get_file_length(p_udf_file);
 while (file_length > 0) {
  memset(buf, 0, UDF_BLOCKSIZE);
  read_size = udf_read_block(p_udf_file, buf, 1);
  if (read_size < 0) {
   uprintf("Error reading UDF file %s", iso_file);
   goto out;
  }
  buf_size = (DWORD)MIN(file_length, read_size);
  if (!WriteFileWithRetry(file_handle, buf, buf_size, &wr_size, WRITE_RETRIES)) {
   uprintf("  Error writing file %s: %s", dest_file, WindowsErrorString());
   goto out;
  }
  file_length -= read_size;
  r += read_size;
 }
 goto out;

try_iso:
 p_iso = iso9660_open(iso);
 if (p_iso == ((void*)0)) {
  uprintf("Unable to open image '%s'", iso);
  goto out;
 }

 p_statbuf = iso9660_ifs_stat_translate(p_iso, iso_file);
 if (p_statbuf == ((void*)0)) {
  uprintf("Could not get ISO-9660 file information for file %s", iso_file);
  goto out;
 }

 for (j = 0; j < p_statbuf->extents; j++) {
  extent_length = p_statbuf->extsize[j];
  for (i = 0; extent_length > 0; i++) {
   memset(buf, 0, ISO_BLOCKSIZE);
   lsn = p_statbuf->lsn[j] + (lsn_t)i;
   if (iso9660_iso_seek_read(p_iso, buf, lsn, 1) != ISO_BLOCKSIZE) {
    uprintf("  Error reading ISO9660 file %s at LSN %lu", iso_file, (long unsigned int)lsn);
    goto out;
   }
   buf_size = (DWORD)MIN(extent_length, ISO_BLOCKSIZE);
   if (!WriteFileWithRetry(file_handle, buf, buf_size, &wr_size, WRITE_RETRIES)) {
    uprintf("  Error writing file %s: %s", dest_file, WindowsErrorString());
    goto out;
   }
   extent_length -= ISO_BLOCKSIZE;
   r += ISO_BLOCKSIZE;
  }
 }

out:
 safe_closehandle(file_handle);
 if (p_statbuf != ((void*)0))
  safe_free(p_statbuf->rr.psz_symlink);
 safe_free(p_statbuf);
 if (p_udf_root != ((void*)0))
  udf_dirent_free(p_udf_root);
 if (p_udf_file != ((void*)0))
  udf_dirent_free(p_udf_file);
 if (p_iso != ((void*)0))
  iso9660_close(p_iso);
 if (p_udf != ((void*)0))
  udf_close(p_udf);
 return r;
}
