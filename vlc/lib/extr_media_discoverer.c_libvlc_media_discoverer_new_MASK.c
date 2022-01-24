#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  catname_to_submedialist; int /*<<< orphan*/ * p_sd; TYPE_3__* p_mlist; int /*<<< orphan*/ * p_libvlc_instance; } ;
typedef  TYPE_1__ libvlc_media_discoverer_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
struct TYPE_6__ {int b_read_only; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

libvlc_media_discoverer_t *
FUNC9( libvlc_instance_t * p_inst, const char * psz_name )
{
    /* podcast SD is a hack and only works with custom playlist callbacks. */
    if( !FUNC6( psz_name, "podcast", 7 ) )
        return NULL;

    libvlc_media_discoverer_t *p_mdis;

    p_mdis = FUNC3(sizeof(*p_mdis) + FUNC5(psz_name) + 1);
    if( FUNC7(p_mdis == NULL) )
    {
        FUNC1( "Not enough memory" );
        return NULL;
    }

    p_mdis->p_libvlc_instance = p_inst;
    p_mdis->p_mlist = FUNC0( p_inst );
    p_mdis->p_mlist->b_read_only = true;
    p_mdis->p_sd = NULL;

    FUNC8( &p_mdis->catname_to_submedialist, 0 );

    FUNC2( p_inst );
    FUNC4( p_mdis->name, psz_name );
    return p_mdis;
}