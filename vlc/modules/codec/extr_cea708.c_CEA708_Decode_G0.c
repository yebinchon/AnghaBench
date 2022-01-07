
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* p_cw; int b_text_waiting; int input_buffer; } ;
typedef TYPE_1__ cea708_t ;
typedef int cea708_input_buffer_t ;
struct TYPE_6__ {int b_visible; int b_defined; } ;


 int CEA708_STATUS_OK ;
 int CEA708_STATUS_OUTPUT ;
 scalar_t__ CEA708_Window_BreaksSpace (TYPE_2__*) ;
 int CEA708_Window_Write (int*,TYPE_2__*) ;
 int POP_COMMAND () ;

__attribute__((used)) static int CEA708_Decode_G0( uint8_t code, cea708_t *p_cea708 )
{
    cea708_input_buffer_t *ib = &p_cea708->input_buffer;
    POP_COMMAND();
    int i_ret = CEA708_STATUS_OK;

    if( !p_cea708->p_cw->b_defined )
        return i_ret;

    uint8_t utf8[4] = {code,0x00,0x00,0x00};

    if(code == 0x7F)
    {
        utf8[0] = 0xe2;
        utf8[1] = 0x99;
        utf8[2] = 0xaa;
    }

    CEA708_Window_Write( utf8, p_cea708->p_cw );

    if( code == 0x20 &&
        p_cea708->b_text_waiting &&
        CEA708_Window_BreaksSpace( p_cea708->p_cw ) )
    {
        i_ret |= CEA708_STATUS_OUTPUT;
    }


    p_cea708->b_text_waiting |= p_cea708->p_cw->b_visible;

    return i_ret;
}
