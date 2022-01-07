
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ag_compression_type ;







 void* decompress_lzma (void const*,int const,char const*,int*) ;
 void* decompress_lzw (void const*,int const,char const*,int*) ;
 void* decompress_zip (void const*,int const,char const*,int*) ;
 void* decompress_zlib (void const*,int const,char const*,int*) ;
 int log_err (char*,...) ;

void *decompress(const ag_compression_type zip_type, const void *buf, const int buf_len,
                 const char *dir_full_path, int *new_buf_len) {
    switch (zip_type) {




        case 132:
            return decompress_lzw(buf, buf_len, dir_full_path, new_buf_len);
        case 128:
            return decompress_zip(buf, buf_len, dir_full_path, new_buf_len);




        case 130:
            log_err("File %s is not compressed", dir_full_path);
            break;
        default:
            log_err("Unsupported compression type: %d", zip_type);
    }

    *new_buf_len = 0;
    return ((void*)0);
}
