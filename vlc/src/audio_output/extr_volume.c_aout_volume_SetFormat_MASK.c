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
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_7__ {scalar_t__ format; } ;
typedef  TYPE_1__ audio_volume_t ;
struct TYPE_8__ {int /*<<< orphan*/ * module; TYPE_1__ object; } ;
typedef  TYPE_2__ aout_volume_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(aout_volume_t *vol, vlc_fourcc_t format)
{
    if (FUNC3(vol == NULL))
        return -1;

    audio_volume_t *obj = &vol->object;
    if (vol->module != NULL)
    {
        if (obj->format == format)
        {
            FUNC2 (obj, "retaining sample format");
            return 0;
        }
        FUNC2 (obj, "changing sample format");
        FUNC1(obj, vol->module);
    }

    obj->format = format;
    vol->module = FUNC0(obj, "audio volume", NULL, false);
    if (vol->module == NULL)
        return -1;
    return 0;
}