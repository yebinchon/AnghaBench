#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_keystore_sys ;
struct TYPE_5__ {int /*<<< orphan*/  p_sys; int /*<<< orphan*/  pf_remove; int /*<<< orphan*/  pf_find; int /*<<< orphan*/  pf_store; } ;
typedef  TYPE_1__ vlc_keystore ;

/* Variables and functions */
 int /*<<< orphan*/  Find ; 
 int /*<<< orphan*/  Remove ; 
 int /*<<< orphan*/  Store ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5( vlc_object_t* p_this )
{
    vlc_keystore *p_keystore = ( vlc_keystore* )p_this;
    int i_ret;

    p_keystore->p_sys = FUNC0( 1, sizeof( vlc_keystore_sys ) );
    if ( !p_keystore->p_sys)
        return VLC_ENOMEM;

    i_ret = FUNC4( p_keystore );
    if ( i_ret )
    {
        FUNC3( p_keystore, "vlc_dbus_init failed" );
        goto error;
    }

    i_ret = FUNC2( p_keystore );
    if ( i_ret )
    {
        FUNC3( p_keystore, "kwallet_open failed" );
        goto error;
    }

    p_keystore->pf_store = Store;
    p_keystore->pf_find = Find;
    p_keystore->pf_remove = Remove;

    return i_ret;

error:
    FUNC1( p_keystore->p_sys );
    return i_ret;
}