
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzw_state {int bits_count; int bits_buf; int (* user_write_data ) (int ,unsigned char*,int) ;int user_ptr; } ;


 int stub1 (int ,unsigned char*,int) ;
 int stub2 (int ,unsigned char*,int) ;

__attribute__((used)) static int lzw_flush_bits(struct lzw_state *state)
{
    unsigned char byte;

    while (state->bits_count >= 8)
    {
        byte = (unsigned char)state->bits_buf;
        if (state->user_write_data(state->user_ptr, &byte, 1) != 1)
            return 0;
        state->bits_buf >>= 8;
        state->bits_count -= 8;
    }

    if (state->bits_count)
    {
        static const char mask[8] = { 0x00,0x01,0x03,0x07,0x0f,0x1f,0x3f,0x7f };

        byte = (unsigned char)state->bits_buf & mask[state->bits_count];
        if (state->user_write_data(state->user_ptr, &byte, 1) != 1)
            return 0;
    }

    state->bits_buf = 0;
    state->bits_count = 0;

    return 1;
}
