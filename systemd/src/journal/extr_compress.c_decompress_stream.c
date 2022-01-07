
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EPROTONOSUPPORT ;
 int decompress_stream_lz4 (int,int,int ) ;
 int decompress_stream_xz (int,int,int ) ;
 scalar_t__ endswith (char const*,char*) ;

int decompress_stream(const char *filename, int fdf, int fdt, uint64_t max_bytes) {

        if (endswith(filename, ".lz4"))
                return decompress_stream_lz4(fdf, fdt, max_bytes);
        else if (endswith(filename, ".xz"))
                return decompress_stream_xz(fdf, fdt, max_bytes);
        else
                return -EPROTONOSUPPORT;
}
