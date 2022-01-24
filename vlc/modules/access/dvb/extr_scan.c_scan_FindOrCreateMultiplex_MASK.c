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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  scan_tuner_config_t ;
typedef  int /*<<< orphan*/  scan_t ;
typedef  int /*<<< orphan*/  scan_multiplex_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static scan_multiplex_t *FUNC6( scan_t *p_scan, uint16_t i_ts_id,
                                                     const scan_tuner_config_t *p_cfg )
{
    scan_multiplex_t *p_mplex = FUNC2( p_scan, i_ts_id );
    if( p_mplex == NULL )
    {
        p_mplex = FUNC4( p_cfg, i_ts_id );
        if( FUNC0(p_mplex) )
        {
            if ( FUNC5(!FUNC1( p_scan, p_mplex )) ) /* OOM */
            {
                FUNC3( p_mplex );
                return NULL;
            }
        }
    }
    return p_mplex;
}