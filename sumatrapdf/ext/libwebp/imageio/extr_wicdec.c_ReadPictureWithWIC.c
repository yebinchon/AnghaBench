
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WebPPicture {int dummy; } ;
struct Metadata {int dummy; } ;


 int fprintf (int ,char*) ;
 int stderr ;

int ReadPictureWithWIC(const char* const filename,
                       struct WebPPicture* const pic, int keep_alpha,
                       struct Metadata* const metadata) {
  (void)filename;
  (void)pic;
  (void)keep_alpha;
  (void)metadata;
  fprintf(stderr, "Windows Imaging Component (WIC) support not compiled. "
                  "Visual Studio and mingw-w64 builds support WIC. Make sure "
                  "wincodec.h detection is working correctly if using autoconf "
                  "and HAVE_WINCODEC_H is defined before building.\n");
  return 0;
}
