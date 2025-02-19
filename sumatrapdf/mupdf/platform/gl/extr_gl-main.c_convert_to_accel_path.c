
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int fz_is_directory (int ,char*) ;
 size_t fz_snprintf (char*,size_t,char*,char*,char*) ;
 char* getenv (char*) ;

__attribute__((used)) static int convert_to_accel_path(char outname[], char *absname, size_t len)
{
 char *tmpdir;
 char *s;

 tmpdir = getenv("TEMP");
 if (!tmpdir)
  tmpdir = getenv("TMP");
 if (!tmpdir)
  tmpdir = "/var/tmp";
 if (!fz_is_directory(ctx, tmpdir))
  tmpdir = "/tmp";

 if (absname[0] == '/' || absname[0] == '\\')
  ++absname;

 s = absname;
 while (*s) {
  if (*s == '/' || *s == '\\' || *s == ':')
   *s = '%';
  ++s;
 }

 if (fz_snprintf(outname, len, "%s/%s.accel", tmpdir, absname) >= len)
  return 0;
 return 1;
}
