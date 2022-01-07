
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_OK ;
 int MessageBoxA (int *,char const*,char*,int ) ;
 int exit (int) ;

__attribute__((used)) static void usage(const char *argv0)
{
 const char *msg =
  "usage: mupdf [options] file.pdf [page]\n"
  "\t-p -\tpassword\n"
  "\t-r -\tresolution\n"
  "\t-A -\tset anti-aliasing quality in bits (0=off, 8=best)\n"
  "\t-C -\tRRGGBB (tint color in hexadecimal syntax)\n"
  "\t-W -\tpage width for EPUB layout\n"
  "\t-H -\tpage height for EPUB layout\n"
  "\t-I -\tinvert colors\n"
  "\t-S -\tfont size for EPUB layout\n"
  "\t-U -\tuser style sheet for EPUB layout\n"
  "\t-X\tdisable document styles for EPUB layout\n";
 MessageBoxA(((void*)0), msg, "MuPDF: Usage", MB_OK);
 exit(1);
}
