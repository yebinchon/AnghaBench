#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int b_playing; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_write; int /*<<< orphan*/  p_dsbuffer; int /*<<< orphan*/  i_last_read; scalar_t__ i_data; } ;
typedef  TYPE_1__ aout_stream_sys_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4( aout_stream_sys_t *sys )
{
    HRESULT ret = FUNC1( sys->p_dsbuffer );
    if( ret == DS_OK )
    {
        FUNC2(&sys->lock);
        sys->i_data = 0;
        sys->i_last_read = sys->i_write;
        FUNC0( sys->p_dsbuffer, sys->i_write);
        sys->b_playing = false;
        FUNC3(&sys->lock);
    }
    return ret;
}