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
typedef  TYPE_1__ vlc_decoder_device ;
struct TYPE_7__ {int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* cleanupDeviceCb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  hd3d; } ;
typedef  TYPE_2__ d3d9_decoder_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(vlc_decoder_device *device)
{
    d3d9_decoder_device *sys = device->sys;

    FUNC0( &sys->hd3d );

    if ( sys->cleanupDeviceCb )
        sys->cleanupDeviceCb( sys->opaque );
    FUNC3( FUNC1(device), sys );
}