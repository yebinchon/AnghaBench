
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {struct TYPE_6__* next_; } ;
typedef TYPE_1__ WebPMuxImage ;


 scalar_t__ MuxImageCount (TYPE_1__*,int ) ;
 int WEBP_CHUNK_NIL ;
 int assert (TYPE_1__**) ;

__attribute__((used)) static int SearchImageToGetOrDelete(WebPMuxImage** wpi_list, uint32_t nth,
                                    WebPMuxImage*** const location) {
  uint32_t count = 0;
  assert(wpi_list);
  *location = wpi_list;

  if (nth == 0) {
    nth = MuxImageCount(*wpi_list, WEBP_CHUNK_NIL);
    if (nth == 0) return 0;
  }

  while (*wpi_list != ((void*)0)) {
    WebPMuxImage* const cur_wpi = *wpi_list;
    ++count;
    if (count == nth) return 1;
    wpi_list = &cur_wpi->next_;
    *location = wpi_list;
  }
  return 0;
}
