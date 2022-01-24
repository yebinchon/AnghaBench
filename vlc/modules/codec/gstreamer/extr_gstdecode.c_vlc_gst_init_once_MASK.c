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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  vlc_gst_plugin_init ; 
 int /*<<< orphan*/  vlc_gst_registered ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0( NULL, NULL );
    vlc_gst_registered = FUNC1( 1, 0, "videolan",
                "VLC Gstreamer plugins", vlc_gst_plugin_init,
                "1.0.0", "LGPL", "NA", "vlc", "NA" );
}