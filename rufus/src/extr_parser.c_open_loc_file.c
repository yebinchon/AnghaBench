
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int * _wfopen (int *,char*) ;
 char* conversion_error ;
 scalar_t__ embedded_loc_filename ;
 scalar_t__ loc_filename ;
 int safe_free (scalar_t__) ;
 scalar_t__ safe_strcmp (char const*,char const*) ;
 scalar_t__ safe_strdup (char const*) ;
 int safe_strlen (char const*) ;
 int uprintf (char*,char const*) ;
 int * utf8_to_wchar (char const*) ;

FILE* open_loc_file(const char* filename)
{
 FILE* fd = ((void*)0);
 wchar_t *wfilename = ((void*)0);
 const char* tmp_ext = ".tmp";

 if (filename == ((void*)0))
  return ((void*)0);

 if (loc_filename != embedded_loc_filename) {
  safe_free(loc_filename);
 }
 if (safe_strcmp(tmp_ext, &filename[safe_strlen(filename)-4]) == 0) {
  loc_filename = embedded_loc_filename;
 } else {
  loc_filename = safe_strdup(filename);
 }
 wfilename = utf8_to_wchar(filename);
 if (wfilename == ((void*)0)) {
  uprintf(conversion_error, filename);
  goto out;
 }
 fd = _wfopen(wfilename, L"rb");
 if (fd == ((void*)0)) {
  uprintf("localization: could not open '%s'\n", filename);
 }

out:
 safe_free(wfilename);
 return fd;
}
