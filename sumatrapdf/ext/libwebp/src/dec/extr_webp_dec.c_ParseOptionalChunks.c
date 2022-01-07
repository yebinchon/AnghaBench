
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int VP8StatusCode ;


 size_t CHUNK_HEADER_SIZE ;
 size_t GetLE32 (int const*) ;
 size_t MAX_CHUNK_PAYLOAD ;
 int TAG_SIZE ;
 int VP8X_CHUNK_SIZE ;
 int VP8_STATUS_BITSTREAM_ERROR ;
 int VP8_STATUS_NOT_ENOUGH_DATA ;
 int VP8_STATUS_OK ;
 int assert (int ) ;
 int memcmp (int const*,char*,int) ;

__attribute__((used)) static VP8StatusCode ParseOptionalChunks(const uint8_t** const data,
                                         size_t* const data_size,
                                         size_t const riff_size,
                                         const uint8_t** const alpha_data,
                                         size_t* const alpha_size) {
  const uint8_t* buf;
  size_t buf_size;
  uint32_t total_size = TAG_SIZE +
                        CHUNK_HEADER_SIZE +
                        VP8X_CHUNK_SIZE;
  assert(data != ((void*)0));
  assert(data_size != ((void*)0));
  buf = *data;
  buf_size = *data_size;

  assert(alpha_data != ((void*)0));
  assert(alpha_size != ((void*)0));
  *alpha_data = ((void*)0);
  *alpha_size = 0;

  while (1) {
    uint32_t chunk_size;
    uint32_t disk_chunk_size;

    *data = buf;
    *data_size = buf_size;

    if (buf_size < CHUNK_HEADER_SIZE) {
      return VP8_STATUS_NOT_ENOUGH_DATA;
    }

    chunk_size = GetLE32(buf + TAG_SIZE);
    if (chunk_size > MAX_CHUNK_PAYLOAD) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }

    disk_chunk_size = (CHUNK_HEADER_SIZE + chunk_size + 1) & ~1;
    total_size += disk_chunk_size;


    if (riff_size > 0 && (total_size > riff_size)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }





    if (!memcmp(buf, "VP8 ", TAG_SIZE) ||
        !memcmp(buf, "VP8L", TAG_SIZE)) {
      return VP8_STATUS_OK;
    }

    if (buf_size < disk_chunk_size) {
      return VP8_STATUS_NOT_ENOUGH_DATA;
    }

    if (!memcmp(buf, "ALPH", TAG_SIZE)) {
      *alpha_data = buf + CHUNK_HEADER_SIZE;
      *alpha_size = chunk_size;
    }


    buf += disk_chunk_size;
    buf_size -= disk_chunk_size;
  }
}
