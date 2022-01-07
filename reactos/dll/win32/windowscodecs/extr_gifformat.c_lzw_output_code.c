
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzw_state {short bits_buf; short bits_count; int (* user_write_data ) (int ,unsigned char*,int) ;int user_ptr; scalar_t__ code_bits; } ;


 int stub1 (int ,unsigned char*,int) ;

__attribute__((used)) static int lzw_output_code(struct lzw_state *state, short code)
{
    state->bits_buf |= code << state->bits_count;
    state->bits_count += state->code_bits;

    while (state->bits_count >= 8)
    {
        unsigned char byte = (unsigned char)state->bits_buf;
        if (state->user_write_data(state->user_ptr, &byte, 1) != 1)
            return 0;
        state->bits_buf >>= 8;
        state->bits_count -= 8;
    }

    return 1;
}
