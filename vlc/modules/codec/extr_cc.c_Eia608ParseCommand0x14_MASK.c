#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_row; int /*<<< orphan*/  i_column; } ;
struct TYPE_9__ {void* mode; int /*<<< orphan*/  font; int /*<<< orphan*/  color; TYPE_1__ cursor; int /*<<< orphan*/  i_screen; int /*<<< orphan*/  i_row_rollup; } ;
typedef  TYPE_2__ eia608_t ;
typedef  int eia608_status_t ;
typedef  void* eia608_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIA608_COLOR_DEFAULT ; 
 int /*<<< orphan*/  EIA608_FONT_REGULAR ; 
 void* EIA608_MODE_PAINTON ; 
 void* EIA608_MODE_POPUP ; 
 void* EIA608_MODE_ROLLUP_2 ; 
 void* EIA608_MODE_ROLLUP_3 ; 
 void* EIA608_MODE_ROLLUP_4 ; 
 void* EIA608_MODE_TEXT ; 
 int EIA608_STATUS_CAPTION_CLEARED ; 
 int EIA608_STATUS_CAPTION_ENDED ; 
 int EIA608_STATUS_CHANGED ; 
 int EIA608_STATUS_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static eia608_status_t FUNC6( eia608_t *h, uint8_t d2 )
{
    eia608_status_t i_status = EIA608_STATUS_DEFAULT;
    eia608_mode_t proposed_mode;

    switch( d2 )
    {
    case 0x20:  /* Resume caption loading */
        FUNC0(FUNC5("[RCL]"));
        h->mode = EIA608_MODE_POPUP;
        break;
    case 0x21:  /* Backspace */
        FUNC0(FUNC5("[BS]"));
        FUNC1( h );
        i_status = EIA608_STATUS_CHANGED;
        break;
    case 0x22:  /* Reserved */
    case 0x23:
        FUNC0(FUNC5("[ALARM %d]", d2 - 0x22));
        break;
    case 0x24:  /* Delete to end of row */
        FUNC0(FUNC5("[DER]"));
        FUNC3( h );
        break;
    case 0x25:  /* Rollup 2 */
    case 0x26:  /* Rollup 3 */
    case 0x27:  /* Rollup 4 */
        FUNC0(FUNC5("[RU%d]", d2 - 0x23));
        if( h->mode == EIA608_MODE_POPUP || h->mode == EIA608_MODE_PAINTON )
        {
            FUNC2( h, true );
            FUNC2( h, false );
            i_status = EIA608_STATUS_CHANGED | EIA608_STATUS_CAPTION_CLEARED;
        }

        if( d2 == 0x25 )
            proposed_mode = EIA608_MODE_ROLLUP_2;
        else if( d2 == 0x26 )
            proposed_mode = EIA608_MODE_ROLLUP_3;
        else
            proposed_mode = EIA608_MODE_ROLLUP_4;

        if ( proposed_mode != h->mode )
        {
            h->mode = proposed_mode;
            h->cursor.i_column = 0;
            h->cursor.i_row = h->i_row_rollup;
        }
        break;
    case 0x28:  /* Flash on */
        FUNC0(FUNC5("[FON]"));
        /* TODO */
        break;
    case 0x29:  /* Resume direct captionning */
        FUNC0(FUNC5("[RDC]"));
        h->mode = EIA608_MODE_PAINTON;
        break;
    case 0x2a:  /* Text restart */
        FUNC0(FUNC5("[TR]"));
        /* TODO */
        break;

    case 0x2b: /* Resume text display */
        FUNC0(FUNC5("[RTD]"));
        h->mode = EIA608_MODE_TEXT;
        break;

    case 0x2c: /* Erase displayed memory */
        FUNC0(FUNC5("[EDM]"));
        FUNC2( h, true );
        i_status = EIA608_STATUS_CHANGED | EIA608_STATUS_CAPTION_CLEARED;
        break;
    case 0x2d: /* Carriage return */
        FUNC0(FUNC5("[CR]"));
        FUNC4(h);
        i_status = EIA608_STATUS_CHANGED;
        break;
    case 0x2e: /* Erase non displayed memory */
        FUNC0(FUNC5("[ENM]"));
        FUNC2( h, false );
        break;
    case 0x2f: /* End of caption (flip screen if not paint on) */
        FUNC0(FUNC5("[EOC]"));
        if( h->mode != EIA608_MODE_PAINTON )
            h->i_screen = 1 - h->i_screen;
        h->mode = EIA608_MODE_POPUP;
        h->cursor.i_column = 0;
        h->cursor.i_row = 0;
        h->color = EIA608_COLOR_DEFAULT;
        h->font = EIA608_FONT_REGULAR;
        i_status = EIA608_STATUS_CHANGED | EIA608_STATUS_CAPTION_ENDED;
        break;
    }
    return i_status;
}