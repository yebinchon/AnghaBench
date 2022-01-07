
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct siphash {int v0; int v1; int v2; int v3; } ;


 int assert_se (int) ;
 int siphash24 (int const*,size_t,int const*) ;
 int siphash24_compress (int const*,size_t,struct siphash*) ;
 int siphash24_finalize (struct siphash*) ;
 int siphash24_init (struct siphash*,int const*) ;

__attribute__((used)) static void do_test(const uint8_t *in, size_t len, const uint8_t *key) {
        struct siphash state = {};
        uint64_t out;
        unsigned i, j;

        out = siphash24(in, len, key);
        assert_se(out == 0xa129ca6149be45e5);


        siphash24_init(&state, key);
        assert_se(state.v0 == 0x7469686173716475);
        assert_se(state.v1 == 0x6b617f6d656e6665);
        assert_se(state.v2 == 0x6b7f62616d677361);
        assert_se(state.v3 == 0x7b6b696e727e6c7b);
        siphash24_compress(in, len, &state);
        assert_se(state.v0 == 0x4a017198de0a59e0);
        assert_se(state.v1 == 0x0d52f6f62a4f59a4);
        assert_se(state.v2 == 0x634cb3577b01fd3d);
        assert_se(state.v3 == 0xa5224d6f55c7d9c8);
        out = siphash24_finalize(&state);
        assert_se(out == 0xa129ca6149be45e5);
        assert_se(state.v0 == 0xf6bcd53893fecff1);
        assert_se(state.v1 == 0x54b9964c7ea0d937);
        assert_se(state.v2 == 0x1b38329c099bb55a);
        assert_se(state.v3 == 0x1814bb89ad7be679);



        for (i = 0; i < len; i++) {
                for (j = i; j < len; j++) {
                        siphash24_init(&state, key);
                        siphash24_compress(in, i, &state);
                        siphash24_compress(&in[i], j - i, &state);
                        siphash24_compress(&in[j], len - j, &state);
                        out = siphash24_finalize(&state);
                        assert_se(out == 0xa129ca6149be45e5);
                }
        }
}
