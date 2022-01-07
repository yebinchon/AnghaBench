
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GifFileType {int dummy; } ;
typedef int GifByteType ;


 int ErrorGIFNotAvailable () ;

int GIFReadLoopCount(struct GifFileType* const gif, GifByteType** const buf,
                     int* const loop_count) {
  (void)gif;
  (void)buf;
  (void)loop_count;
  ErrorGIFNotAvailable();
  return 0;
}
