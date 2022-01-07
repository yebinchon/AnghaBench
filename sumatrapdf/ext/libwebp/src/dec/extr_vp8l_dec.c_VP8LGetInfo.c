
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int VP8LBitReader ;


 int ReadImageInfo (int *,int*,int*,int*) ;
 int VP8LCheckSignature (int const*,size_t) ;
 int VP8LInitBitReader (int *,int const*,size_t) ;
 size_t VP8L_FRAME_HEADER_SIZE ;

int VP8LGetInfo(const uint8_t* data, size_t data_size,
                int* const width, int* const height, int* const has_alpha) {
  if (data == ((void*)0) || data_size < VP8L_FRAME_HEADER_SIZE) {
    return 0;
  } else if (!VP8LCheckSignature(data, data_size)) {
    return 0;
  } else {
    int w, h, a;
    VP8LBitReader br;
    VP8LInitBitReader(&br, data, data_size);
    if (!ReadImageInfo(&br, &w, &h, &a)) {
      return 0;
    }
    if (width != ((void*)0)) *width = w;
    if (height != ((void*)0)) *height = h;
    if (has_alpha != ((void*)0)) *has_alpha = a;
    return 1;
  }
}
