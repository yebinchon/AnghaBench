
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
typedef int i64 ;
struct TYPE_3__ {size_t const* new_state_base; int * num_bits; } ;
typedef TYPE_1__ FSE_dtable ;


 size_t STREAM_read_bits (int const* const,int const,int * const) ;

__attribute__((used)) static inline void FSE_update_state(const FSE_dtable *const dtable,
                                    u16 *const state, const u8 *const src,
                                    i64 *const offset) {
    const u8 bits = dtable->num_bits[*state];
    const u16 rest = STREAM_read_bits(src, bits, offset);
    *state = dtable->new_state_base[*state] + rest;
}
