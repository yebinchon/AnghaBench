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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  es_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_SET_PAUSE_STATE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1( es_out_t *p_out, bool b_source_paused, bool b_paused, vlc_tick_t i_date )
{
    return FUNC0( p_out, ES_OUT_SET_PAUSE_STATE, b_source_paused, b_paused, i_date );
}