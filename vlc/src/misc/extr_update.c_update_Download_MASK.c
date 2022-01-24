#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_download; int /*<<< orphan*/  p_libvlc; } ;
typedef  TYPE_1__ update_t ;
struct TYPE_9__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  aborted; int /*<<< orphan*/ * psz_destdir; TYPE_1__* p_update; } ;
typedef  TYPE_2__ update_download_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  update_DownloadReal ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7( update_t *p_update, const char *psz_destdir )
{
    FUNC0( p_update );

    // If the object already exist, destroy it
    if( p_update->p_download )
    {
        FUNC1( &p_update->p_download->aborted, true );
        FUNC5( p_update->p_download->thread, NULL );
        FUNC6(p_update->p_download);
    }

    update_download_thread_t *p_udt =
        FUNC4( p_update->p_libvlc, sizeof( *p_udt ),
                           "update download" );
    if( !p_udt )
        return;

    p_udt->p_update = p_update;
    p_update->p_download = p_udt;
    p_udt->psz_destdir = psz_destdir ? FUNC2( psz_destdir ) : NULL;

    FUNC1(&p_udt->aborted, false);
    FUNC3( &p_udt->thread, update_DownloadReal, p_udt, VLC_THREAD_PRIORITY_LOW );
}