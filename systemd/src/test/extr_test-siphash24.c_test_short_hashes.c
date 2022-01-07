
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct siphash {int dummy; } ;


 int assert_se (int) ;
 scalar_t__ memcmp (struct siphash*,struct siphash*,int) ;
 int siphash24_compress (int const*,unsigned int,struct siphash*) ;
 int siphash24_init (struct siphash*,int const*) ;
 int zero (int*) ;

__attribute__((used)) static void test_short_hashes(void) {
        const uint8_t one[] = { 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08,
                                0x09, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16 };
        const uint8_t key[16] = { 0x22, 0x24, 0x41, 0x22, 0x55, 0x77, 0x88, 0x07,
                                   0x23, 0x09, 0x23, 0x14, 0x0c, 0x33, 0x0e, 0x0f};
        uint8_t two[sizeof one] = {};

        struct siphash state1 = {}, state2 = {};
        unsigned i, j;

        siphash24_init(&state1, key);
        siphash24_init(&state2, key);


        for (i = 1; i <= sizeof one; i++) {
                siphash24_compress(one, i, &state1);

                two[i-1] = one[i-1];
                siphash24_compress(two, i, &state2);

                assert_se(memcmp(&state1, &state2, sizeof state1) == 0);
        }


        for (i = sizeof one; i > 0; i--) {
                zero(two);

                for (j = 1; j <= sizeof one; j++) {
                        siphash24_compress(one, i, &state1);
                        siphash24_compress(one, j, &state1);

                        siphash24_compress(one, i, &state2);
                        two[j-1] = one[j-1];
                        siphash24_compress(two, j, &state2);

                        assert_se(memcmp(&state1, &state2, sizeof state1) == 0);
                }
        }
}
