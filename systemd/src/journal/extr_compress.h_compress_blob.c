
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int OBJECT_COMPRESSED_LZ4 ;
 int OBJECT_COMPRESSED_XZ ;
 int compress_blob_lz4 (void const*,int ,void*,size_t,size_t*) ;
 int compress_blob_xz (void const*,int ,void*,size_t,size_t*) ;

__attribute__((used)) static inline int compress_blob(const void *src, uint64_t src_size,
                                void *dst, size_t dst_alloc_size, size_t *dst_size) {
        int r;





        r = compress_blob_xz(src, src_size, dst, dst_alloc_size, dst_size);
        if (r == 0)
                return OBJECT_COMPRESSED_XZ;

        return r;
}
