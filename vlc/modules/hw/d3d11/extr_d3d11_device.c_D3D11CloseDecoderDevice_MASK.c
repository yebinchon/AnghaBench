#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ vlc_decoder_device ;
struct TYPE_9__ {int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* cleanupDeviceCb ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  device; } ;
struct TYPE_11__ {TYPE_2__ external; int /*<<< orphan*/  hd3d; TYPE_1__ dec_device; } ;
typedef  TYPE_4__ d3d11_decoder_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(vlc_decoder_device *device)
{
    d3d11_decoder_device *sys = device->sys;

    FUNC1(sys->dec_device.device);

    FUNC0(&sys->hd3d);

    if ( sys->external.cleanupDeviceCb )
        sys->external.cleanupDeviceCb( sys->external.opaque );

    FUNC4( FUNC2(device), sys );
}