#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  outfifo; scalar_t__ p_converter; scalar_t__ p_enc; int /*<<< orphan*/  p_dec; } ;
typedef  TYPE_1__ image_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5( image_handler_t *p_image )
{
    if( !p_image ) return;

    FUNC2( p_image->p_dec );
    if( p_image->p_enc ) FUNC1( p_image->p_enc );
    if( p_image->p_converter ) FUNC0( p_image->p_converter );

    FUNC4( p_image->outfifo );

    FUNC3( p_image );
    p_image = NULL;
}