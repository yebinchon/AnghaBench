
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ag_compression_type ;


 int AG_COMPRESS ;
 int AG_GZIP ;
 int AG_NO_COMPRESSION ;
 int AG_XZ ;
 int AG_ZIP ;
 int LZMA_HEADER_SOMETIMES ;
 int XZ_HEADER_MAGIC ;
 int log_debug (char*) ;
 scalar_t__ memcmp (int ,unsigned char const*,int) ;

ag_compression_type is_zipped(const void *buf, const int buf_len) {
    const unsigned char *buf_c = buf;

    if (buf_len == 0)
        return AG_NO_COMPRESSION;


    if (buf_len >= 2) {
        if (buf_c[0] == 0x1F) {
            if (buf_c[1] == 0x8B) {




            } else if (buf_c[1] == 0x9B) {
                log_debug("Found compress-based stream");
                return AG_COMPRESS;
            }
        }
    }


    if (buf_len >= 4) {
        if (buf_c[0] == 0x50 && buf_c[1] == 0x4B && buf_c[2] == 0x03 && buf_c[3] == 0x04) {
            log_debug("Found zip-based stream");
            return AG_ZIP;
        }
    }
    return AG_NO_COMPRESSION;
}
