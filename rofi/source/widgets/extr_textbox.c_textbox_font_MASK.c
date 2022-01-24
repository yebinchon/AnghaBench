#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * state; } ;
struct TYPE_6__ {int tbft; TYPE_1__ widget; } ;
typedef  TYPE_2__ textbox ;
typedef  int TextBoxFontType ;

/* Variables and functions */
 int ACTIVE ; 
#define  ALT 129 
 int FMOD_MASK ; 
#define  HIGHLIGHT 128 
 int STATE_MASK ; 
 int URGENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ ** theme_prop_names ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3 ( textbox *tb, TextBoxFontType tbft )
{
    TextBoxFontType t = tbft & STATE_MASK;
    if ( tb == NULL ) {
        return;
    }
    // ACTIVE has priority over URGENT if both set.
    if ( t == ( URGENT | ACTIVE ) ) {
        t = ACTIVE;
    }
    switch ( ( tbft & FMOD_MASK ) )
    {
    case HIGHLIGHT:
        FUNC2 ( FUNC0 ( tb ), theme_prop_names[t][1] );
        break;
    case ALT:
        FUNC2 ( FUNC0 ( tb ), theme_prop_names[t][2] );
        break;
    default:
        FUNC2 ( FUNC0 ( tb ), theme_prop_names[t][0] );
        break;
    }
    if ( tb->tbft != tbft || tb->widget.state == NULL ) {
        FUNC1 ( FUNC0 ( tb ) );
    }
    tb->tbft = tbft;
}