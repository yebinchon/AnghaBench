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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  UDPPorts ; 
 scalar_t__ UDP_DYNAMIC_PORTS ; 
 scalar_t__ UDP_STARTING_PORT ; 

UINT FUNC2( UINT HintPort ) {
    if( HintPort ) {
        if( FUNC0( &UDPPorts, HintPort ) ) return HintPort;
        else return (UINT)-1;
    } else return FUNC1
               ( &UDPPorts, UDP_STARTING_PORT,
                 UDP_STARTING_PORT + UDP_DYNAMIC_PORTS );
}