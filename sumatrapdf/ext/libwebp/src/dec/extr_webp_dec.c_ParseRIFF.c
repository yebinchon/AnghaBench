
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int VP8StatusCode ;


 size_t CHUNK_HEADER_SIZE ;
 int GetLE32 (int const*) ;
 int const MAX_CHUNK_PAYLOAD ;
 size_t RIFF_HEADER_SIZE ;
 int TAG_SIZE ;
 int VP8_STATUS_BITSTREAM_ERROR ;
 int VP8_STATUS_NOT_ENOUGH_DATA ;
 int VP8_STATUS_OK ;
 int assert (int ) ;
 scalar_t__ memcmp (int const*,char*,int) ;

__attribute__((used)) static VP8StatusCode ParseRIFF(const uint8_t** const data,
                               size_t* const data_size, int have_all_data,
                               size_t* const riff_size) {
  assert(data != ((void*)0));
  assert(data_size != ((void*)0));
  assert(riff_size != ((void*)0));

  *riff_size = 0;
  if (*data_size >= RIFF_HEADER_SIZE && !memcmp(*data, "RIFF", TAG_SIZE)) {
    if (memcmp(*data + 8, "WEBP", TAG_SIZE)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    } else {
      const uint32_t size = GetLE32(*data + TAG_SIZE);

      if (size < TAG_SIZE + CHUNK_HEADER_SIZE) {
        return VP8_STATUS_BITSTREAM_ERROR;
      }
      if (size > MAX_CHUNK_PAYLOAD) {
        return VP8_STATUS_BITSTREAM_ERROR;
      }
      if (have_all_data && (size > *data_size - CHUNK_HEADER_SIZE)) {
        return VP8_STATUS_NOT_ENOUGH_DATA;
      }

      *riff_size = size;
      *data += RIFF_HEADER_SIZE;
      *data_size -= RIFF_HEADER_SIZE;
    }
  }
  return VP8_STATUS_OK;
}
