
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzw_state {short init_code_bits; int clear_code; int eof_code; void* user_ptr; void* user_write_data; scalar_t__ bits_count; scalar_t__ bits_buf; } ;


 int lzw_dict_reset (struct lzw_state*) ;

__attribute__((used)) static void lzw_state_init(struct lzw_state *state, short init_code_bits, void *user_write_data, void *user_ptr)
{
    state->init_code_bits = init_code_bits;
    state->clear_code = 1 << init_code_bits;
    state->eof_code = state->clear_code + 1;
    state->bits_buf = 0;
    state->bits_count = 0;
    state->user_write_data = user_write_data;
    state->user_ptr = user_ptr;

    lzw_dict_reset(state);
}
