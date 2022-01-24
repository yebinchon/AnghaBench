#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_instance_t ;
struct TYPE_7__ {char* psz_name; char* psz_description; struct TYPE_7__* p_next; } ;
typedef  TYPE_1__ libvlc_audio_output_t ;
struct TYPE_8__ {char* psz_device; char* psz_description; struct TYPE_8__* p_next; } ;
typedef  TYPE_2__ libvlc_audio_output_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9 (void)
{
    libvlc_instance_t *vlc = FUNC5 (0, NULL);
    FUNC0 (vlc != NULL);

    libvlc_audio_output_t *mods = FUNC3 (vlc);
    FUNC0 (mods != NULL);

    FUNC8 ("Audio outputs:");
    for (const libvlc_audio_output_t *o = mods; o != NULL; o = o->p_next)
    {
        libvlc_audio_output_device_t *devs;

        FUNC7(" %s: %s\n", o->psz_name, o->psz_description);

        devs = FUNC1 (vlc, o->psz_name);
        if (devs == NULL)
            continue;
        for (const libvlc_audio_output_device_t *d = devs;
             d != NULL;
             d = d->p_next)
             FUNC7("  %s: %s\n", d->psz_device, d->psz_description);

        FUNC2 (devs);
    }
    FUNC4 (mods);
    FUNC6 (vlc);
}