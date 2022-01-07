
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8Io ;


 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_DECODER_ABI_VERSION ;
 int memset (int * const,int ,int) ;

int VP8InitIoInternal(VP8Io* const io, int version) {
  if (WEBP_ABI_IS_INCOMPATIBLE(version, WEBP_DECODER_ABI_VERSION)) {
    return 0;
  }
  if (io != ((void*)0)) {
    memset(io, 0, sizeof(*io));
  }
  return 1;
}
