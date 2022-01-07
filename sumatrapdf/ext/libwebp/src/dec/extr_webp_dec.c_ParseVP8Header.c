
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int VP8StatusCode ;


 size_t CHUNK_HEADER_SIZE ;
 size_t GetLE32 (int const* const) ;
 int TAG_SIZE ;
 int VP8LCheckSignature (int const* const,size_t) ;
 int VP8_STATUS_BITSTREAM_ERROR ;
 int VP8_STATUS_NOT_ENOUGH_DATA ;
 int VP8_STATUS_OK ;
 int assert (int ) ;
 int memcmp (int const* const,char*,int) ;

__attribute__((used)) static VP8StatusCode ParseVP8Header(const uint8_t** const data_ptr,
                                    size_t* const data_size, int have_all_data,
                                    size_t riff_size, size_t* const chunk_size,
                                    int* const is_lossless) {
  const uint8_t* const data = *data_ptr;
  const int is_vp8 = !memcmp(data, "VP8 ", TAG_SIZE);
  const int is_vp8l = !memcmp(data, "VP8L", TAG_SIZE);
  const uint32_t minimal_size =
      TAG_SIZE + CHUNK_HEADER_SIZE;

  assert(data != ((void*)0));
  assert(data_size != ((void*)0));
  assert(chunk_size != ((void*)0));
  assert(is_lossless != ((void*)0));

  if (*data_size < CHUNK_HEADER_SIZE) {
    return VP8_STATUS_NOT_ENOUGH_DATA;
  }

  if (is_vp8 || is_vp8l) {

    const uint32_t size = GetLE32(data + TAG_SIZE);
    if ((riff_size >= minimal_size) && (size > riff_size - minimal_size)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
    if (have_all_data && (size > *data_size - CHUNK_HEADER_SIZE)) {
      return VP8_STATUS_NOT_ENOUGH_DATA;
    }

    *chunk_size = size;
    *data_ptr += CHUNK_HEADER_SIZE;
    *data_size -= CHUNK_HEADER_SIZE;
    *is_lossless = is_vp8l;
  } else {

    *is_lossless = VP8LCheckSignature(data, *data_size);
    *chunk_size = *data_size;
  }

  return VP8_STATUS_OK;
}
