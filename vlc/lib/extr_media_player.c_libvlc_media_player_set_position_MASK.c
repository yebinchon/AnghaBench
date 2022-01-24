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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_3__ {int /*<<< orphan*/ * player; } ;
typedef  TYPE_1__ libvlc_media_player_t ;
typedef  enum vlc_player_seek_speed { ____Placeholder_vlc_player_seek_speed } vlc_player_seek_speed ;

/* Variables and functions */
 int VLC_PLAYER_SEEK_FAST ; 
 int VLC_PLAYER_SEEK_PRECISE ; 
 int /*<<< orphan*/  VLC_PLAYER_WHENCE_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3( libvlc_media_player_t *p_mi,
                                       float position, bool b_fast )
{
    vlc_player_t *player = p_mi->player;
    FUNC0(player);

    enum vlc_player_seek_speed speed = b_fast ? VLC_PLAYER_SEEK_FAST
                                              : VLC_PLAYER_SEEK_PRECISE;
    FUNC1(player, position, speed, VLC_PLAYER_WHENCE_ABSOLUTE);

    FUNC2(player);

    /* may not fail anymore, keep int not to break the API */
    return 0;
}