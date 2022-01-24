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
typedef  int /*<<< orphan*/  sout_mux_t ;
typedef  int /*<<< orphan*/  sout_input_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2( sout_mux_t *p_mux, sout_input_t *p_input )
{
    FUNC0(p_input);
    FUNC1( p_mux, "adding input" );
    return VLC_SUCCESS;
}