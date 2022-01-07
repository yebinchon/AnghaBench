
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ColorMapObject {int dummy; } ;


 int ErrorGIFNotAvailable () ;

void GIFGetBackgroundColor(const struct ColorMapObject* const color_map,
                           int bgcolor_index, int transparent_index,
                           uint32_t* const bgcolor) {
  (void)color_map;
  (void)bgcolor_index;
  (void)transparent_index;
  (void)bgcolor;
  ErrorGIFNotAvailable();
}
