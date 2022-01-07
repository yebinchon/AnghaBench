
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef int WebPMuxError ;


 int WEBP_MUX_MEMORY_ERROR ;
 int WEBP_MUX_OK ;
 scalar_t__ WebPSafeMalloc (unsigned long long,int) ;

WebPMuxError MuxImagePush(const WebPMuxImage* wpi, WebPMuxImage** wpi_list) {
  WebPMuxImage* new_wpi;

  while (*wpi_list != ((void*)0)) {
    WebPMuxImage* const cur_wpi = *wpi_list;
    if (cur_wpi->next_ == ((void*)0)) break;
    wpi_list = &cur_wpi->next_;
  }

  new_wpi = (WebPMuxImage*)WebPSafeMalloc(1ULL, sizeof(*new_wpi));
  if (new_wpi == ((void*)0)) return WEBP_MUX_MEMORY_ERROR;
  *new_wpi = *wpi;
  new_wpi->next_ = ((void*)0);

  if (*wpi_list != ((void*)0)) {
    (*wpi_list)->next_ = new_wpi;
  } else {
    *wpi_list = new_wpi;
  }
  return WEBP_MUX_OK;
}
