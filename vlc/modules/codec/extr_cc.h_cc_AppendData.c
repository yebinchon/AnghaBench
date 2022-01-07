
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_608channels; int i_708channels; int* p_data; int i_data; } ;
typedef TYPE_1__ cc_data_t ;



__attribute__((used)) static inline void cc_AppendData( cc_data_t *c, uint8_t cc_preamble, const uint8_t cc[2] )
{
    uint8_t i_field = cc_preamble & 0x03;
    if( i_field == 0 || i_field == 1 )
        c->i_608channels |= (3 << (2 * i_field));
    else
        c->i_708channels |= 1;

    c->p_data[c->i_data++] = cc_preamble;
    c->p_data[c->i_data++] = cc[0];
    c->p_data[c->i_data++] = cc[1];
}
