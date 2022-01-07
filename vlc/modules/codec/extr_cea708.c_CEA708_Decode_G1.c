
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* p_cw; int b_text_waiting; int input_buffer; } ;
typedef TYPE_1__ cea708_t ;
typedef int cea708_input_buffer_t ;
struct TYPE_5__ {int b_visible; int b_defined; } ;


 int CEA708_STATUS_OK ;
 int CEA708_Window_Write (int*,TYPE_2__*) ;
 int POP_COMMAND () ;

__attribute__((used)) static int CEA708_Decode_G1( uint8_t code, cea708_t *p_cea708 )
{
    cea708_input_buffer_t *ib = &p_cea708->input_buffer;
    POP_COMMAND();

    if( !p_cea708->p_cw->b_defined )
        return CEA708_STATUS_OK;

    uint8_t utf8[4] = {0xc0 | (code & 0xc0) >> 6,
                       0x80 | (code & 0x3f),
                       0, 0};

    CEA708_Window_Write( utf8, p_cea708->p_cw );
    p_cea708->b_text_waiting |= p_cea708->p_cw->b_visible;

    return CEA708_STATUS_OK;
}
