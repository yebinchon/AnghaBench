
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPDecBuffer ;
typedef int FILE ;


 int fprintf (int ,char*) ;
 int stderr ;

int WebPWritePNG(FILE* fout, const WebPDecBuffer* const buffer) {
  if (fout == ((void*)0) || buffer == ((void*)0)) return 0;

  fprintf(stderr, "PNG support not compiled. Please install the libpng "
          "development package before building.\n");
  fprintf(stderr, "You can run with -ppm flag to decode in PPM format.\n");
  return 0;
}
