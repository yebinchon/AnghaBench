
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictionary_t ;


 size_t ZSTD_decompress_with_dict (void* const,size_t const,void const* const,size_t const,int *) ;
 int * create_dictionary () ;
 int free_dictionary (int *) ;

size_t ZSTD_decompress(void *const dst, const size_t dst_len,
                       const void *const src, const size_t src_len) {
    dictionary_t* uninit_dict = create_dictionary();
    size_t const decomp_size = ZSTD_decompress_with_dict(dst, dst_len, src,
                                                         src_len, uninit_dict);
    free_dictionary(uninit_dict);
    return decomp_size;
}
