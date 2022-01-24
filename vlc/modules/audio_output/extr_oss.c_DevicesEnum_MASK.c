#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numaudios; int dev; int caps; int /*<<< orphan*/  name; int /*<<< orphan*/  devnode; int /*<<< orphan*/  enabled; int /*<<< orphan*/  license; int /*<<< orphan*/  versionnum; int /*<<< orphan*/  version; int /*<<< orphan*/  product; } ;
typedef  TYPE_1__ oss_sysinfo ;
typedef  TYPE_1__ oss_audioinfo ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int PCM_CAP_HIDDEN ; 
 int PCM_CAP_MODEM ; 
 int PCM_CAP_OUTPUT ; 
 int /*<<< orphan*/  SNDCTL_AUDIOINFO ; 
 int /*<<< orphan*/  SNDCTL_SYSINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9 (audio_output_t *aout)
{
    int fd = FUNC6 ("/dev/dsp", O_WRONLY);
    if (fd == -1)
        return -1;

    oss_sysinfo si;
    int n = -1;

    if (FUNC1 (fd, SNDCTL_SYSINFO, &si) < 0)
    {
        FUNC3 (aout, "cannot get system infos: %s", FUNC7(errno));
        goto out;
    }

    FUNC2 (aout, "using %s version %s (0x%06X) under %s", si.product,
             si.version, si.versionnum, si.license);

    for (int i = 0; i < si.numaudios; i++)
    {
        oss_audioinfo ai = { .dev = i };

        if (FUNC1 (fd, SNDCTL_AUDIOINFO, &ai) < 0)
        {
            FUNC4 (aout, "cannot get device %d infos: %s", i,
                      FUNC8(errno));
            continue;
        }
        if (ai.caps & (PCM_CAP_HIDDEN|PCM_CAP_MODEM))
            continue;
        if (!(ai.caps & PCM_CAP_OUTPUT))
            continue;
        if (!ai.enabled)
            continue;

        FUNC0 (aout, ai.devnode, ai.name);
        n++;
    }
out:
    FUNC5 (fd);
    return n;
}