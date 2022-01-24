#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; int /*<<< orphan*/  psz_referrer; int /*<<< orphan*/  psz_user_agent; int /*<<< orphan*/  psz_icy_title; int /*<<< orphan*/  psz_icy_genre; int /*<<< orphan*/  psz_icy_name; int /*<<< orphan*/  psz_location; int /*<<< orphan*/  psz_mime; int /*<<< orphan*/  proxy; scalar_t__ b_proxy; int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( vlc_object_t *p_this )
{
    stream_t     *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    FUNC2( &p_sys->url );
    if( p_sys->b_proxy )
        FUNC2( &p_sys->proxy );

    FUNC1( p_sys->psz_mime );
    FUNC1( p_sys->psz_location );

    FUNC1( p_sys->psz_icy_name );
    FUNC1( p_sys->psz_icy_genre );
    FUNC1( p_sys->psz_icy_title );

    FUNC1( p_sys->psz_user_agent );
    FUNC1( p_sys->psz_referrer );
    FUNC1( p_sys->psz_username );
    FUNC1( p_sys->psz_password );

    FUNC0( p_access );
}