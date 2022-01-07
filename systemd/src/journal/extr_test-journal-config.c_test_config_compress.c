
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COMPRESS_PARSE_CHECK (char*,int,int) ;

__attribute__((used)) static void test_config_compress(void) {
        COMPRESS_PARSE_CHECK("yes", 1, 111);
        COMPRESS_PARSE_CHECK("no", 0, 111);
        COMPRESS_PARSE_CHECK("y", 1, 111);
        COMPRESS_PARSE_CHECK("n", 0, 111);
        COMPRESS_PARSE_CHECK("true", 1, 111);
        COMPRESS_PARSE_CHECK("false", 0, 111);
        COMPRESS_PARSE_CHECK("t", 1, 111);
        COMPRESS_PARSE_CHECK("f", 0, 111);
        COMPRESS_PARSE_CHECK("on", 1, 111);
        COMPRESS_PARSE_CHECK("off", 0, 111);



        COMPRESS_PARSE_CHECK("1", 1, 111);
        COMPRESS_PARSE_CHECK("0", 0, 111);


        COMPRESS_PARSE_CHECK("1B", 1, 1);
        COMPRESS_PARSE_CHECK("1K", 1, 1024);
        COMPRESS_PARSE_CHECK("1M", 1, 1024 * 1024);
        COMPRESS_PARSE_CHECK("1G", 1, 1024 * 1024 * 1024);


        COMPRESS_PARSE_CHECK("-1", 1, 111);
        COMPRESS_PARSE_CHECK("blah blah", 1, 111);
        COMPRESS_PARSE_CHECK("", 1, (uint64_t)-1);
}
