
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int ostream_t ;
typedef int istream_t ;
typedef size_t i64 ;
struct TYPE_5__ {size_t max_bits; } ;
typedef TYPE_1__ HUF_dtable ;


 int CORRUPTION () ;
 int HUF_decode_symbol (TYPE_1__ const* const,int *,int const* const,size_t*) ;
 int HUF_init_state (TYPE_1__ const* const,int *,int const* const,size_t*) ;
 int INP_SIZE () ;
 int * IO_get_read_ptr (int * const,size_t const) ;
 size_t IO_istream_len (int * const) ;
 int IO_write_byte (int * const,int ) ;
 int highest_set_bit (int const) ;

__attribute__((used)) static size_t HUF_decompress_1stream(const HUF_dtable *const dtable,
                                     ostream_t *const out,
                                     istream_t *const in) {
    const size_t len = IO_istream_len(in);
    if (len == 0) {
        INP_SIZE();
    }
    const u8 *const src = IO_get_read_ptr(in, len);
    const int padding = 8 - highest_set_bit(src[len - 1]);


    i64 bit_offset = len * 8 - padding;
    u16 state;

    HUF_init_state(dtable, &state, src, &bit_offset);

    size_t symbols_written = 0;
    while (bit_offset > -dtable->max_bits) {

        IO_write_byte(out, HUF_decode_symbol(dtable, &state, src, &bit_offset));
        symbols_written++;
    }
    if (bit_offset != -dtable->max_bits) {
        CORRUPTION();
    }

    return symbols_written;
}
