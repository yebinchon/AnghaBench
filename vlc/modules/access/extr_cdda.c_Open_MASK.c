#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vcddev_t ;
struct TYPE_2__ {int /*<<< orphan*/  psz_filepath; int /*<<< orphan*/  psz_location; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int VLC_EGENERIC ; 

__attribute__((used)) static int FUNC3(vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    unsigned track;

    vcddev_t *dev = FUNC2(obj, stream->psz_location, stream->psz_filepath,
                             &track);
    if (dev == NULL)
        return VLC_EGENERIC;

    if (track == 0)
        return FUNC0(obj, dev);
    else
        return FUNC1(obj, dev, track);
}