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
struct TYPE_4__ {struct TYPE_4__* psz_lang; scalar_t__ iconv_u16be; } ;
typedef  TYPE_1__ atsc_a65_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2( atsc_a65_handle_t *p_handle )
{
    if( p_handle->iconv_u16be )
        FUNC1( p_handle->iconv_u16be );
    FUNC0( p_handle->psz_lang );
    FUNC0( p_handle );
}