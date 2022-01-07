
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int VP8StatusCode ;


 size_t CHUNK_HEADER_SIZE ;
 int GetLE24 (int const*) ;
 void* GetLE32 (int const*) ;
 int MAX_IMAGE_AREA ;
 int TAG_SIZE ;
 scalar_t__ const VP8X_CHUNK_SIZE ;
 int VP8_STATUS_BITSTREAM_ERROR ;
 int VP8_STATUS_NOT_ENOUGH_DATA ;
 int VP8_STATUS_OK ;
 int assert (int ) ;
 int memcmp (int const*,char*,int) ;

__attribute__((used)) static VP8StatusCode ParseVP8X(const uint8_t** const data,
                               size_t* const data_size,
                               int* const found_vp8x,
                               int* const width_ptr, int* const height_ptr,
                               uint32_t* const flags_ptr) {
  const uint32_t vp8x_size = CHUNK_HEADER_SIZE + VP8X_CHUNK_SIZE;
  assert(data != ((void*)0));
  assert(data_size != ((void*)0));
  assert(found_vp8x != ((void*)0));

  *found_vp8x = 0;

  if (*data_size < CHUNK_HEADER_SIZE) {
    return VP8_STATUS_NOT_ENOUGH_DATA;
  }

  if (!memcmp(*data, "VP8X", TAG_SIZE)) {
    int width, height;
    uint32_t flags;
    const uint32_t chunk_size = GetLE32(*data + TAG_SIZE);
    if (chunk_size != VP8X_CHUNK_SIZE) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }


    if (*data_size < vp8x_size) {
      return VP8_STATUS_NOT_ENOUGH_DATA;
    }
    flags = GetLE32(*data + 8);
    width = 1 + GetLE24(*data + 12);
    height = 1 + GetLE24(*data + 15);
    if (width * (uint64_t)height >= MAX_IMAGE_AREA) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }

    if (flags_ptr != ((void*)0)) *flags_ptr = flags;
    if (width_ptr != ((void*)0)) *width_ptr = width;
    if (height_ptr != ((void*)0)) *height_ptr = height;

    *data += vp8x_size;
    *data_size -= vp8x_size;
    *found_vp8x = 1;
  }
  return VP8_STATUS_OK;
}
