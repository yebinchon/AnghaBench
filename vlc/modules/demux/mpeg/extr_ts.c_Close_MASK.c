#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_10__ {TYPE_4__* b25stream; scalar_t__ p_instance; } ;
struct TYPE_12__ {int /*<<< orphan*/  attachments; int /*<<< orphan*/  pids; int /*<<< orphan*/  csa_lock; TYPE_1__ arib; int /*<<< orphan*/  programs; scalar_t__ csa; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/ * s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ChangeKeyCallback ; 
 int /*<<< orphan*/  FreeDictAttachment ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC13( vlc_object_t *p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC2( p_demux, FUNC1(p_sys, 0) );

    FUNC10( &p_sys->csa_lock );
    if( p_sys->csa )
    {
        FUNC7( p_demux, "ts-csa-ck", ChangeKeyCallback, (void *)1 );
        FUNC7( p_demux, "ts-csa2-ck", ChangeKeyCallback, NULL );
        FUNC4( p_sys->csa );
    }
    FUNC11( &p_sys->csa_lock );

    FUNC0( p_sys->programs );

#ifdef HAVE_ARIBB24
    if ( p_sys->arib.p_instance )
        arib_instance_destroy( p_sys->arib.p_instance );
#endif

    if ( p_sys->arib.b25stream )
    {
        p_sys->arib.b25stream->s = NULL; /* don't chain kill demuxer's source */
        FUNC12( p_sys->arib.b25stream );
    }

    FUNC9( &p_sys->csa_lock );

    /* Release all non default pids */
    FUNC6( p_demux, &p_sys->pids );

    /* Clear up attachments */
    FUNC8( &p_sys->attachments, FreeDictAttachment, NULL );

    FUNC5( p_sys );
}