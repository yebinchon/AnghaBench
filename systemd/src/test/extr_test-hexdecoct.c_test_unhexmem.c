
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EPIPE ;
 size_t strlen (char const*) ;
 int test_unhexmem_one (char const*,size_t,int ) ;

__attribute__((used)) static void test_unhexmem(void) {
        const char *hex = "efa2149213";
        const char *hex_space = "  e f   a\n 2\r  14\n\r\t9\t2 \n1\r3 \r\r\t";
        const char *hex_invalid = "efa214921o";

        test_unhexmem_one(((void*)0), 0, 0);
        test_unhexmem_one("", 0, 0);
        test_unhexmem_one("", (size_t) -1, 0);
        test_unhexmem_one("   \n \t\r   \t\t \n\n\n", (size_t) -1, 0);
        test_unhexmem_one(hex_invalid, strlen(hex_invalid), -EINVAL);
        test_unhexmem_one(hex_invalid, (size_t) - 1, -EINVAL);
        test_unhexmem_one(hex, strlen(hex) - 1, -EPIPE);
        test_unhexmem_one(hex, strlen(hex), 0);
        test_unhexmem_one(hex, (size_t) -1, 0);
        test_unhexmem_one(hex_space, strlen(hex_space), 0);
        test_unhexmem_one(hex_space, (size_t) -1, 0);
}
