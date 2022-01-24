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

/* Variables and functions */
 int /*<<< orphan*/  CONFIGURE_LINE ; 
 int /*<<< orphan*/  COPYRIGHT_MESSAGE ; 
 int /*<<< orphan*/  VERSION_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psz_vlc_changeset ; 

__attribute__((used)) static void FUNC1(vlc_object_t *obj)
{
    /* Announce who we are */
    FUNC0(obj, "VLC media player - %s", VERSION_MESSAGE);
    FUNC0(obj, "%s", COPYRIGHT_MESSAGE);
    FUNC0(obj, "revision %s", psz_vlc_changeset);
    FUNC0(obj, "configured with %s", CONFIGURE_LINE);
}