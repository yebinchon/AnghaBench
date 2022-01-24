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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct discovery_sys {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  description; struct discovery_sys* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_PREFIX ; 
 int FUNC0 (int /*<<< orphan*/ *,struct discovery_sys*,int) ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct discovery_sys* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppsz_options ; 

__attribute__((used)) static int
FUNC4( vlc_object_t *p_obj )
{
    services_discovery_t *p_sd = (services_discovery_t *)p_obj;

    struct discovery_sys *p_sys = FUNC2( 1, sizeof(struct discovery_sys) );
    if( !p_sys )
        return VLC_ENOMEM;
    p_sd->p_sys = p_sys;

    p_sd->description = FUNC1("mDNS Network Discovery");
    FUNC3( p_sd, CFG_PREFIX, ppsz_options, p_sd->p_cfg );

    return FUNC0( p_obj, p_sys, false );
}