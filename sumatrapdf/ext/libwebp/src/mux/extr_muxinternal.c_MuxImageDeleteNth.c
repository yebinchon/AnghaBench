
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WebPMuxImage ;
typedef int WebPMuxError ;


 int * MuxImageDelete (int *) ;
 int SearchImageToGetOrDelete (int **,int ,int ***) ;
 int WEBP_MUX_NOT_FOUND ;
 int WEBP_MUX_OK ;
 int assert (int **) ;

WebPMuxError MuxImageDeleteNth(WebPMuxImage** wpi_list, uint32_t nth) {
  assert(wpi_list);
  if (!SearchImageToGetOrDelete(wpi_list, nth, &wpi_list)) {
    return WEBP_MUX_NOT_FOUND;
  }
  *wpi_list = MuxImageDelete(*wpi_list);
  return WEBP_MUX_OK;
}
