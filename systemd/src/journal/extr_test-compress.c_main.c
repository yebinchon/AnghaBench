
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int huge ;
typedef int data ;


 int EXIT_TEST_SKIP ;
 int LOG_DEBUG ;
 int OBJECT_COMPRESSED_LZ4 ;
 int OBJECT_COMPRESSED_XZ ;
 int char_array_0 (char*) ;
 int compress_blob_lz4 ;
 int compress_blob_xz ;
 int compress_stream_lz4 ;
 int compress_stream_xz ;
 int decompress_blob_lz4 ;
 int decompress_blob_xz ;
 int decompress_startswith_lz4 ;
 int decompress_startswith_xz ;
 int decompress_stream_lz4 ;
 int decompress_stream_xz ;
 int log_info (char*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int random_bytes (char*,int) ;
 int test_compress_decompress (int ,int ,int ,char const*,int,int) ;
 int test_compress_stream (int ,char*,int ,int ,char const*) ;
 int test_decompress_startswith (int ,int ,int ,char const*,int,int) ;
 int test_decompress_startswith_short (int ,int ,int ) ;
 int test_lz4_decompress_partial () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        log_info("/* XZ and LZ4 tests skipped */");
        return EXIT_TEST_SKIP;

}
