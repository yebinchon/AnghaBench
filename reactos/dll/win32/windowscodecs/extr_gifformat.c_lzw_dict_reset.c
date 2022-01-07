
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* prefix; scalar_t__* suffix; } ;
struct lzw_state {int code_bits; int init_code_bits; int next_code; TYPE_1__ dict; } ;


 int LZW_DICT_SIZE ;

__attribute__((used)) static void lzw_dict_reset(struct lzw_state *state)
{
    int i;

    state->code_bits = state->init_code_bits + 1;
    state->next_code = (1 << state->init_code_bits) + 2;

    for(i = 0; i < LZW_DICT_SIZE; i++)
    {
        state->dict.prefix[i] = 1 << 12;
        state->dict.suffix[i] = 0;
    }
}
