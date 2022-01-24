#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_playlist_export {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_playlist_export*,int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_playlist_export*,char*) ; 
 int /*<<< orphan*/  utf8_fprintf ; 

int FUNC2( vlc_object_t *p_this )
{
    struct vlc_playlist_export *p_export = (struct vlc_playlist_export *) p_this;

    FUNC1( p_export, "saving using M3U format");

    FUNC0(p_export, utf8_fprintf);
    return VLC_SUCCESS;
}