
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct WebPPicture {int dummy; } ;
struct Metadata {int dummy; } ;


 int fprintf (int ,char*) ;
 int stderr ;

int ReadJPEG(const uint8_t* const data, size_t data_size,
             struct WebPPicture* const pic, int keep_alpha,
             struct Metadata* const metadata) {
  (void)data;
  (void)data_size;
  (void)pic;
  (void)keep_alpha;
  (void)metadata;
  fprintf(stderr, "JPEG support not compiled. Please install the libjpeg "
          "development package before building.\n");
  return 0;
}
