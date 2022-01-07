
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct siphash {int padding; int v0; int v1; int v2; int v3; scalar_t__ inlen; } ;


 int assert (struct siphash*) ;
 int printf (char*,scalar_t__,int ,int ) ;
 int sipround (struct siphash*) ;

uint64_t siphash24_finalize(struct siphash *state) {
        uint64_t b;

        assert(state);

        b = state->padding | (((uint64_t) state->inlen) << 56);
        state->v3 ^= b;
        sipround(state);
        sipround(state);
        state->v0 ^= b;







        state->v2 ^= 0xff;

        sipround(state);
        sipround(state);
        sipround(state);
        sipround(state);

        return state->v0 ^ state->v1 ^ state->v2 ^ state->v3;
}
