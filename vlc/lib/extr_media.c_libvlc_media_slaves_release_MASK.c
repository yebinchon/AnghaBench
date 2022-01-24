#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ **** libvlc_media_slave_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ******) ; 

void FUNC2( libvlc_media_slave_t **pp_slaves,
                                  unsigned int i_count )
{
    if( i_count > 0 )
    {
        FUNC0( pp_slaves );
        for( unsigned int i = 0; i < i_count; ++i )
            FUNC1( &pp_slaves[i] );
    }
    FUNC1( pp_slaves );
}