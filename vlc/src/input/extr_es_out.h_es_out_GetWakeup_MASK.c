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
 int /*<<< orphan*/  ES_OUT_GET_WAKE_UP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline vlc_tick_t FUNC2( es_out_t *p_out )
{
    vlc_tick_t i_wu;
    int i_ret = FUNC1( p_out, ES_OUT_GET_WAKE_UP, &i_wu );

    FUNC0( !i_ret );
    return i_wu;
}