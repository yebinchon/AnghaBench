#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  i_int; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  requested_stereo_mode; } ;
typedef  TYPE_2__ aout_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_RESTART_STEREOMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (vlc_object_t *obj, const char *varname,
                               vlc_value_t oldval, vlc_value_t newval, void *data)
{
    audio_output_t *aout = (audio_output_t *)obj;
    (void)varname; (void)oldval; (void)newval; (void)data;

    aout_owner_t *owner = FUNC1 (aout);
    FUNC2 (&owner->lock);
    owner->requested_stereo_mode = newval.i_int;
    FUNC3 (&owner->lock);

    FUNC0 (aout, AOUT_RESTART_STEREOMODE);
    return 0;
}