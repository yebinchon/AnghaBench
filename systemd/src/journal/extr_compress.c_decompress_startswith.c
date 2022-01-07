
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int EBADMSG ;
 int OBJECT_COMPRESSED_LZ4 ;
 int OBJECT_COMPRESSED_XZ ;
 int decompress_startswith_lz4 (void const*,int ,void**,size_t*,void const*,size_t,int ) ;
 int decompress_startswith_xz (void const*,int ,void**,size_t*,void const*,size_t,int ) ;

int decompress_startswith(int compression,
                          const void *src, uint64_t src_size,
                          void **buffer, size_t *buffer_size,
                          const void *prefix, size_t prefix_len,
                          uint8_t extra) {
        if (compression == OBJECT_COMPRESSED_XZ)
                return decompress_startswith_xz(src, src_size,
                                                buffer, buffer_size,
                                                prefix, prefix_len,
                                                extra);
        else if (compression == OBJECT_COMPRESSED_LZ4)
                return decompress_startswith_lz4(src, src_size,
                                                 buffer, buffer_size,
                                                 prefix, prefix_len,
                                                 extra);
        else
                return -EBADMSG;
}
