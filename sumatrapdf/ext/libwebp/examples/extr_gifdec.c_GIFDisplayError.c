
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GifFileType {int dummy; } ;


 int ErrorGIFNotAvailable () ;

void GIFDisplayError(const struct GifFileType* const gif, int gif_error) {
  (void)gif;
  (void)gif_error;
  ErrorGIFNotAvailable();
}
