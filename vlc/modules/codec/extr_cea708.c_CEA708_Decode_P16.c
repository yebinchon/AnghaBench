
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {TYPE_2__* p_cw; int b_text_waiting; } ;
typedef TYPE_1__ cea708_t ;
struct TYPE_5__ {int b_visible; int b_defined; } ;


 int CEA708_STATUS_OK ;
 int CEA708_Window_Write (char*,TYPE_2__*) ;

__attribute__((used)) static int CEA708_Decode_P16( uint16_t ucs2, cea708_t *p_cea708 )
{
    if( !p_cea708->p_cw->b_defined )
        return CEA708_STATUS_OK;

    uint8_t out[4] = { '?', 0, 0, 0 };


    if( ucs2 <= 0x7F )
    {
        out[0] = ucs2;
    }
    else if( ucs2 <= 0x7FF )
    {
        out[0] = 0xC0 | (ucs2 >> 6);
        out[1] = 0x80 | (ucs2 & 0x3F);
    }
    else
    {
        out[0] = 0xE0 | (ucs2 >> 12);
        out[1] = 0x80 | ((ucs2 >> 6) & 0x3F);
        out[2] = 0x80 | (ucs2 & 0x3F);
    }

    CEA708_Window_Write( out, p_cea708->p_cw );

    p_cea708->b_text_waiting |= p_cea708->p_cw->b_visible;

    return CEA708_STATUS_OK;
}
