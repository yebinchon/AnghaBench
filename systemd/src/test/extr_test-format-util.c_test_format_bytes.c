
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UINT64_C (int) ;
 int UINT64_MAX ;
 int test_format_bytes_one (int,int,char*,char*,char*,char*) ;

__attribute__((used)) static void test_format_bytes(void) {
        test_format_bytes_one(900, 1, "900B", "900B", "900B", "900B");
        test_format_bytes_one(900, 0, "900", "900", "900", "900");
        test_format_bytes_one(1023, 1, "1023B", "1023B", "1.0K", "1K");
        test_format_bytes_one(1023, 0, "1023", "1023", "1.0K", "1K");
        test_format_bytes_one(1024, 1, "1.0K", "1K", "1.0K", "1K");
        test_format_bytes_one(1024, 0, "1.0K", "1K", "1.0K", "1K");
        test_format_bytes_one(1100, 1, "1.0K", "1K", "1.1K", "1K");
        test_format_bytes_one(1500, 1, "1.4K", "1K", "1.5K", "1K");
        test_format_bytes_one(UINT64_C(3)*1024*1024, 1, "3.0M", "3M", "3.1M", "3M");
        test_format_bytes_one(UINT64_C(3)*1024*1024*1024, 1, "3.0G", "3G", "3.2G", "3G");
        test_format_bytes_one(UINT64_C(3)*1024*1024*1024*1024, 1, "3.0T", "3T", "3.2T", "3T");
        test_format_bytes_one(UINT64_C(3)*1024*1024*1024*1024*1024, 1, "3.0P", "3P", "3.3P", "3P");
        test_format_bytes_one(UINT64_C(3)*1024*1024*1024*1024*1024*1024, 1, "3.0E", "3E", "3.4E", "3E");
        test_format_bytes_one(UINT64_MAX, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        test_format_bytes_one(UINT64_MAX, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
