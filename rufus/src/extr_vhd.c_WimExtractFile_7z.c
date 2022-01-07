
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int MAX_PATH ;
 scalar_t__ RunCommand (char*,char*,int ) ;
 int TRUE ;
 int WindowsErrorString () ;
 scalar_t__ _access (char*,int ) ;
 int errno ;
 scalar_t__ rename (char*,char const*) ;
 size_t safe_strlen (char const*) ;
 int sevenzip_path ;
 int static_sprintf (char*,char*,int ,char const*,char*,char const*) ;
 int static_strcat (char*,char const*) ;
 int static_strcpy (char*,char const*) ;
 int strlen (char*) ;
 int uprintf (char*,char const*,...) ;

BOOL WimExtractFile_7z(const char* image, int index, const char* src, const char* dst)
{
 int n;
 size_t i;
 char cmdline[MAX_PATH];
 char tmpdst[MAX_PATH];
 char index_prefix[] = "#\\";

 uprintf("Opening: %s:[%d] (7-Zip)", image, index);

 if ((image == ((void*)0)) || (src == ((void*)0)) || (dst == ((void*)0)))
  return FALSE;



 index_prefix[0] = '0' + index;

 uprintf("Extracting: %s (From %s)", dst, src);






 for (n = 0; n < 2; n++) {
  static_strcpy(tmpdst, dst);
  for (i = strlen(tmpdst) - 1; (i > 0) && (tmpdst[i] != '\\') && (tmpdst[i] != '/'); i--);
  tmpdst[i] = 0;

  static_sprintf(cmdline, "\"%s\" -y e \"%s\" %s%s", sevenzip_path,
   image, (n == 0) ? index_prefix : "", src);
  if (RunCommand(cmdline, tmpdst, FALSE) != 0) {
   uprintf("  Could not launch 7z.exe: %s", WindowsErrorString());
   return FALSE;
  }

  for (i = safe_strlen(src); (i > 0) && (src[i] != '\\') && (src[i] != '/'); i--);
  if (i == 0)
   static_strcat(tmpdst, "\\");
  static_strcat(tmpdst, &src[i]);
  if (_access(tmpdst, 0) == 0)

   break;
 }

 if (n >= 2) {
  uprintf("  7z.exe did not extract %s", tmpdst);
  return FALSE;
 }


 if (rename(tmpdst, dst) != 0) {
  uprintf("  Could not rename %s to %s: errno %d", tmpdst, dst, errno);
  return FALSE;
 }

 return TRUE;
}
