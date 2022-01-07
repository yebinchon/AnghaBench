
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WebPData {int dummy; } ;
struct GifFileType {int dummy; } ;
typedef int GifByteType ;


 int ErrorGIFNotAvailable () ;

int GIFReadMetadata(struct GifFileType* const gif, GifByteType** const buf,
                    struct WebPData* const metadata) {
  (void)gif;
  (void)buf;
  (void)metadata;
  ErrorGIFNotAvailable();
  return 0;
}
