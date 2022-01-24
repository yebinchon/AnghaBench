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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_4__ {scalar_t__ b_bool; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VOUT_WINDOW_STATE_BELOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( vlc_object_t *obj, char const *name,
                              vlc_value_t prev, vlc_value_t cur, void *data )
{
    vout_thread_t *vout = (vout_thread_t *)obj;

    if( cur.b_bool )
    {
        FUNC2(vout, VOUT_WINDOW_STATE_BELOW);
        FUNC1(vout, NULL);
    }
    else
    {
        FUNC0( obj, "fullscreen" );
        FUNC0( obj, "video-on-top" );
    }
    (void) name; (void) prev; (void) data;
    return VLC_SUCCESS;
}