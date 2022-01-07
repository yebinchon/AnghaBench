
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int assert_se (int) ;
 scalar_t__ config_parse_iec_uint64 (int *,char*,int,char*,int,char*,int ,char*,int*,int *) ;

__attribute__((used)) static void test_config_parse_iec_uint64(void) {
        uint64_t offset = 0;
        assert_se(config_parse_iec_uint64(((void*)0), "/this/file", 11, "Section", 22, "Size", 0, "4M", &offset, ((void*)0)) == 0);
        assert_se(offset == 4 * 1024 * 1024);

        assert_se(config_parse_iec_uint64(((void*)0), "/this/file", 11, "Section", 22, "Size", 0, "4.5M", &offset, ((void*)0)) == 0);
}
