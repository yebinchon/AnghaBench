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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  fe_transmit_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSMISSION_MODE_2K ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_8K ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static fe_transmit_mode_t FUNC2( vlc_object_t *p_access )
{
    fe_transmit_mode_t  fe_transmission = 0;
    int i_transmission = FUNC1( p_access, "dvb-transmission" );

    FUNC0( p_access, "using transmission=%d", i_transmission );

    switch( i_transmission )
    {
        case 0: fe_transmission = TRANSMISSION_MODE_AUTO; break;
        case 2: fe_transmission = TRANSMISSION_MODE_2K; break;
        case 8: fe_transmission = TRANSMISSION_MODE_8K; break;
        default:
            FUNC0( p_access, "terrestrial dvb has transmission mode not set, using auto");
            fe_transmission = TRANSMISSION_MODE_AUTO;
            break;
    }
    return fe_transmission;
}