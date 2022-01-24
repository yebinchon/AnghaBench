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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/ * playlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(intf_thread_t *intf)
{
    vlc_playlist_t *playlist = intf->p_sys->playlist;

    FUNC0(intf, "+----[ Playlist ]");
    FUNC2(playlist);
    FUNC1(intf, playlist);
    FUNC3(playlist);
    FUNC0(intf, "+----[ End of playlist ]");
}