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
struct TYPE_5__ {int /*<<< orphan*/ * p_text; } ;
struct TYPE_6__ {int i_alpha; int b_active; TYPE_1__ data; int /*<<< orphan*/  p_fontstyle; int /*<<< orphan*/  format; scalar_t__ i_y; scalar_t__ i_x; } ;
typedef  TYPE_2__ overlay_t ;

/* Variables and functions */
 int /*<<< orphan*/  STYLE_NO_DEFAULTS ; 
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

overlay_t *FUNC4( void )
{
    overlay_t *p_ovl = FUNC1( 1, sizeof( overlay_t ) );
    if( p_ovl == NULL )
       return NULL;

    p_ovl->i_x = p_ovl->i_y = 0;
    p_ovl->i_alpha = 0xFF;
    p_ovl->b_active = false;
    FUNC3( &p_ovl->format, FUNC0( '\0','\0','\0','\0') , 0, 0,
                        0, 0, 1, 1 );
    p_ovl->p_fontstyle = FUNC2( STYLE_NO_DEFAULTS );
    p_ovl->data.p_text = NULL;

    return p_ovl;
}