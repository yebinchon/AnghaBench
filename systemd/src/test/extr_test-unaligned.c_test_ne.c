
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int assert_se (int) ;
 int unaligned_read_ne16 (int*) ;
 int unaligned_read_ne32 (int*) ;
 int unaligned_read_ne64 (int*) ;
 int unaligned_write_ne16 (int*,int) ;
 int unaligned_write_ne32 (int*,int) ;
 int unaligned_write_ne64 (int*,int) ;

__attribute__((used)) static void test_ne(void) {
        uint16_t x = 4711;
        uint32_t y = 123456;
        uint64_t z = 9876543210;





        assert_se(unaligned_read_ne16(&x) == 4711);
        assert_se(unaligned_read_ne32(&y) == 123456);
        assert_se(unaligned_read_ne64(&z) == 9876543210);

        unaligned_write_ne16(&x, 1);
        unaligned_write_ne32(&y, 2);
        unaligned_write_ne64(&z, 3);

        assert_se(x == 1);
        assert_se(y == 2);
        assert_se(z == 3);
}
