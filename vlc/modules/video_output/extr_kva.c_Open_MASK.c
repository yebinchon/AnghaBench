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
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_7__ {scalar_t__ i_result; int /*<<< orphan*/  ack_event; int /*<<< orphan*/  tid; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  vout_display_cfg_t ;
typedef  int /*<<< orphan*/  vlc_video_context ;
typedef  int /*<<< orphan*/  video_format_t ;
struct open_init {int /*<<< orphan*/ * fmtp; int /*<<< orphan*/  const* cfg; TYPE_1__* vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PMThread ; 
 int /*<<< orphan*/  SEM_INDEFINITE_WAIT ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct open_init*) ; 
 TYPE_2__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7 ( vout_display_t *vd, const vout_display_cfg_t *cfg,
                  video_format_t *fmtp, vlc_video_context *context )
{
    vout_display_sys_t *sys;
    struct open_init init = {
        .vd   = vd,
        .cfg  = cfg,
        .fmtp = fmtp,
    };
    FUNC3(context);

    vd->sys = sys = FUNC5( 1, sizeof( *sys ));
    if( !sys )
        return VLC_ENOMEM;

    FUNC1( NULL, &sys->ack_event, 0, FALSE );

    sys->tid = FUNC4( PMThread, NULL, 1024 * 1024, &init );
    FUNC2( sys->ack_event, SEM_INDEFINITE_WAIT );

    if( sys->i_result != VLC_SUCCESS )
    {
        FUNC0( sys->ack_event );

        FUNC6( sys );

        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}