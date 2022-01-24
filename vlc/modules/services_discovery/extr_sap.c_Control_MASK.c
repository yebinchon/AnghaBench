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
typedef  int va_list ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1( demux_t *p_demux, int i_query, va_list args )
{
    FUNC0(*p_demux); FUNC0(i_query); FUNC0(args);
    return VLC_EGENERIC;
}