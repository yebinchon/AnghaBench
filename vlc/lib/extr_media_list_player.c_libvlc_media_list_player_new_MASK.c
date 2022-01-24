#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int i_refcount; int /*<<< orphan*/  object_lock; int /*<<< orphan*/  mp_callback_lock; int /*<<< orphan*/  seek_pending; int /*<<< orphan*/  event_manager; int /*<<< orphan*/ * p_mi; int /*<<< orphan*/  thread; scalar_t__ seek_offset; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  playlist_thread ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

libvlc_media_list_player_t *
FUNC14(libvlc_instance_t * p_instance)
{
    libvlc_media_list_player_t * p_mlp;
    p_mlp = FUNC0( 1, sizeof(libvlc_media_list_player_t) );
    if (FUNC8(p_mlp == NULL))
    {
        FUNC7("Not enough memory");
        return NULL;
    }

    p_mlp->i_refcount = 1;
    p_mlp->seek_offset = 0;
    FUNC13(&p_mlp->object_lock);
    FUNC13(&p_mlp->mp_callback_lock);
    FUNC11(&p_mlp->seek_pending);
    FUNC4(&p_mlp->event_manager, p_mlp);

    /* Create the underlying media_player */
    p_mlp->p_mi = FUNC5(p_instance);
    if( p_mlp->p_mi == NULL )
        goto error;
    FUNC2(p_mlp);

    if (FUNC9(&p_mlp->thread, playlist_thread, p_mlp,
                  VLC_THREAD_PRIORITY_LOW))
    {
        FUNC6(p_mlp->p_mi);
        goto error;
    }

    return p_mlp;
error:
    FUNC3(&p_mlp->event_manager);
    FUNC10(&p_mlp->seek_pending);
    FUNC12(&p_mlp->mp_callback_lock);
    FUNC12(&p_mlp->object_lock);
    FUNC1(p_mlp);
    return NULL;
}