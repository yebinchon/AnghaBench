#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_10__ {int b_text_waiting; TYPE_3__* p_cw; int /*<<< orphan*/  input_buffer; } ;
typedef  TYPE_2__ cea708_t ;
typedef  int /*<<< orphan*/  cea708_input_buffer_t ;
struct TYPE_9__ {int /*<<< orphan*/  print_direction; } ;
struct TYPE_11__ {int /*<<< orphan*/  b_defined; int /*<<< orphan*/  b_visible; TYPE_1__ style; int /*<<< orphan*/  row; int /*<<< orphan*/  col; } ;

/* Variables and functions */
#define  CEA708_C0_BS 135 
#define  CEA708_C0_CR 134 
#define  CEA708_C0_ETX 133 
#define  CEA708_C0_EXT1 132 
#define  CEA708_C0_FF 131 
#define  CEA708_C0_HCR 130 
#define  CEA708_C0_NUL 129 
#define  CEA708_C0_P16 128 
 int FUNC0 (int,TYPE_2__*) ; 
 int FUNC1 (int,TYPE_2__*) ; 
 int CEA708_STATUS_OK ; 
 int CEA708_STATUS_OUTPUT ; 
 int CEA708_STATUS_STARVING ; 
 int /*<<< orphan*/  CEA708_WA_DIRECTION_RTL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static int FUNC13( uint8_t code, cea708_t *p_cea708 )
{
    uint8_t v, i;
    uint16_t u16;
    cea708_input_buffer_t *ib = &p_cea708->input_buffer;
    int i_ret = CEA708_STATUS_OK;

    switch( code )
    {
        case CEA708_C0_NUL:
            FUNC7();
            break;
        case CEA708_C0_ETX:
            FUNC7();
            if( p_cea708->b_text_waiting )
            {
                i_ret |= CEA708_STATUS_OUTPUT;
                p_cea708->b_text_waiting = false;
            }
            break;
        case CEA708_C0_BS:
            FUNC7();
            if( !p_cea708->p_cw->b_defined )
                break;
            FUNC2( p_cea708->p_cw );
            p_cea708->b_text_waiting = true;
            break;
        case CEA708_C0_FF:
            FUNC7();
            if( !p_cea708->p_cw->b_defined )
                break;
            FUNC4( p_cea708->p_cw );
            p_cea708->p_cw->col = 0;
            p_cea708->p_cw->row = 0;
            p_cea708->b_text_waiting = true;
            break;
        case CEA708_C0_CR:
            FUNC7();
            if( !p_cea708->p_cw->b_defined )
                break;
            if( p_cea708->p_cw->style.print_direction <= CEA708_WA_DIRECTION_RTL )
            {
                FUNC3( p_cea708->p_cw );
                if( p_cea708->p_cw->b_visible )
                    i_ret |= CEA708_STATUS_OUTPUT;
            }
            break;
        case CEA708_C0_HCR:
            FUNC7();
            if( !p_cea708->p_cw->b_defined )
                break;
            if( p_cea708->p_cw->style.print_direction > CEA708_WA_DIRECTION_RTL )
            {
                FUNC3( p_cea708->p_cw );
                if( p_cea708->p_cw->b_visible )
                    i_ret |= CEA708_STATUS_OUTPUT;
            }
            break;
        case CEA708_C0_EXT1: /* Special extended table case */
            if( FUNC11( ib ) >= 2 )
            {
                v = FUNC10( ib, 1 );
                /* C2 extended code set */
                if( v < 0x20 )
                {
                    if( v > 0x17 )
                        i = 3;
                    else if( v > 0x0f )
                        i = 2;
                    else if( v > 0x07 )
                        i = 1;
                    else
                        i = 0;
                    if( FUNC11( ib ) < 2 + i )
                        return CEA708_STATUS_STARVING;
                    FUNC7();
                    FUNC6(1 + i);
                }
                /* C3 extended code set */
                else if( v > 0x7f && v < 0xa0 )
                {
                    if( v > 0x87 )
                        i = 5;
                    else
                        i = 4;
                    if( FUNC11( ib ) < 2 + i )
                        return CEA708_STATUS_STARVING;
                    FUNC7();
                    FUNC6(1 + i);
                }
                else
                {
                    FUNC7();
                    v = FUNC9( ib );
                    if( p_cea708->p_cw->b_defined )
                        i_ret |= FUNC0( v, p_cea708 );
                }
            }
            else return CEA708_STATUS_STARVING;
            break;
        case CEA708_C0_P16:
            FUNC8(2);
            u16 = FUNC9( ib ) << 8;
            u16 |= FUNC9( ib );
            i_ret |= FUNC1( u16, p_cea708 );
            FUNC5(FUNC12("[P16 %x]", u16));
            break;
        default:
            FUNC7();
            FUNC5(FUNC12("[UNK %2.2x]", code));
            break;
    }
    FUNC5(FUNC12("[C0 %x]", code));
    return i_ret;
}