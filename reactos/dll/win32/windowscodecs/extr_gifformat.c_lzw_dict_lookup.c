
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short* prefix; unsigned char* suffix; } ;
struct lzw_state {short next_code; TYPE_1__ dict; } ;



__attribute__((used)) static short lzw_dict_lookup(const struct lzw_state *state, short prefix, unsigned char suffix)
{
    short i;

    for (i = 0; i < state->next_code; i++)
    {
        if (state->dict.prefix[i] == prefix && state->dict.suffix[i] == suffix)
            return i;
    }

    return -1;
}
