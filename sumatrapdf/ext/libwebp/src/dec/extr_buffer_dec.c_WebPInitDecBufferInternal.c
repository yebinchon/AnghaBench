
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPDecBuffer ;


 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_DECODER_ABI_VERSION ;
 int memset (int *,int ,int) ;

int WebPInitDecBufferInternal(WebPDecBuffer* buffer, int version) {
  if (WEBP_ABI_IS_INCOMPATIBLE(version, WEBP_DECODER_ABI_VERSION)) {
    return 0;
  }
  if (buffer == ((void*)0)) return 0;
  memset(buffer, 0, sizeof(*buffer));
  return 1;
}
