
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GifByteType ;
typedef int GIFDisposeMethod ;


 int ErrorGIFNotAvailable () ;

int GIFReadGraphicsExtension(const GifByteType* const data, int* const duration,
                             GIFDisposeMethod* const dispose,
                             int* const transparent_index) {
  (void)data;
  (void)duration;
  (void)dispose;
  (void)transparent_index;
  ErrorGIFNotAvailable();
  return 0;
}
