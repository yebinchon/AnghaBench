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
struct TYPE_8__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_9__ {unsigned int i_selected_dev; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,char*,unsigned int,char*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*,char*,char**) ; 
 char* FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(audio_output_t *p_aout)
{
    aout_sys_t *p_sys = p_aout->sys;
    char *warned_devices = FUNC9(p_aout, "auhal-warned-devices");
    bool dev_is_warned = false;
    unsigned dev_count = 0;

    /* Check if the actual device was already warned */
    if (warned_devices)
    {
        char *dup = FUNC6(warned_devices);
        if (dup)
        {
            char *savetpr;
            for (const char *dev = FUNC8(dup, ";", &savetpr);
                 dev != NULL && !dev_is_warned;
                 dev = FUNC8(NULL, ";", &savetpr))
            {
                dev_count++;
                int devid = FUNC2(dev);
                if (devid >= 0 && (unsigned) devid == p_sys->i_selected_dev)
                {
                    dev_is_warned = true;
                    break;
                }
            }
            FUNC4(dup);
        }
    }

    /* Warn only one time per device */
    if (!dev_is_warned)
    {
        FUNC5(p_aout, "You should configure your speaker layout with "
                "Audio Midi Setup in /Applications/Utilities. VLC will "
                "output Stereo only.");
        FUNC11(p_aout,
            FUNC0("Audio device is not configured"), "%s",
            FUNC0("You should configure your speaker layout with "
            "\"Audio Midi Setup\" in /Applications/"
            "Utilities. VLC will output Stereo only."));

        /* Don't save too many devices */
        if (dev_count >= 10)
        {
            char *end = FUNC7(warned_devices, ';');
            if (end)
                *end = 0;
        }

        /* Add the actual device to the list of warned devices */
        char *new_warned_devices;
        if (FUNC1(&new_warned_devices, "%u%s%s", p_sys->i_selected_dev,
                     warned_devices ? ";" : "",
                     warned_devices ? warned_devices : "") != -1)
        {
            FUNC3("auhal-warned-devices", new_warned_devices);
            FUNC10(p_aout, "auhal-warned-devices", new_warned_devices);
            FUNC4(new_warned_devices);
        }
    }
    FUNC4(warned_devices);
}