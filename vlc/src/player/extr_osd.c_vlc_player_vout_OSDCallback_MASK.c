#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_6__ {float i_int; char* psz_string; float f_float; scalar_t__ b_bool; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  VLC_VAR_FLOAT ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,...) ; 

int
FUNC8(vlc_object_t *this, const char *var,
                            vlc_value_t oldval, vlc_value_t newval, void *data)
{
    FUNC0(oldval);

    vout_thread_t *vout = (vout_thread_t *)this;

    if (FUNC3(var, "aspect-ratio") == 0)
        FUNC6(vout, var, VLC_VAR_STRING,
                                   newval, FUNC1("Aspect ratio: %s"));

    else if (FUNC3(var, "autoscale") == 0)
        FUNC7(&vout, 1, newval.b_bool ?
                          FUNC1("Scaled to screen") : FUNC1("Original size"));

    else if (FUNC3(var, "crop") == 0)
        FUNC6(vout, var, VLC_VAR_STRING, newval,
                                   FUNC1("Crop: %s"));

    else if (FUNC3(var, "crop-bottom") == 0)
        FUNC7(&vout, 1, FUNC1("Bottom crop: %d px"), newval.i_int);

    else if (FUNC3(var, "crop-top") == 0)
        FUNC7(&vout, 1, FUNC1("Top crop: %d px"), newval.i_int);

    else if (FUNC3(var, "crop-left") == 0)
        FUNC7(&vout, 1, FUNC1("Left crop: %d px"), newval.i_int);

    else if (FUNC3(var, "crop-right") == 0)
        FUNC7(&vout, 1, FUNC1("Right crop: %d px"), newval.i_int);

    else if (FUNC3(var, "deinterlace") == 0 ||
             FUNC3(var, "deinterlace-mode") == 0)
    {
        bool varmode = FUNC3(var, "deinterlace-mode") == 0;
        int on = !varmode ?
            newval.i_int : FUNC4(vout, "deinterlace");
        char *mode = varmode ?
            newval.psz_string : FUNC5(vout, "deinterlace-mode");
        FUNC7(&vout, 1, FUNC1("Deinterlace %s (%s)"),
                          on == 1 ? FUNC1("On") : FUNC1("Off"), mode);
        if (!varmode)
            FUNC2(mode);
    }

    else if (FUNC3(var, "sub-margin") == 0)
        FUNC7(&vout, 1, FUNC1("Subtitle position %d px"), newval.i_int);

    else if (FUNC3(var, "secondary-sub-margin") == 0)
        FUNC7(&vout, 1, FUNC1("Secondary subtitle position %d px"), newval.i_int);

    else if (FUNC3(var, "sub-text-scale") == 0)
        FUNC7(&vout, 1, FUNC1("Subtitle text scale %d%%"), newval.i_int);

    else if (FUNC3(var, "zoom") == 0)
    {
        if (newval.f_float == 1.f)
            FUNC7(&vout, 1, FUNC1("Zooming reset"));
        else
        {
            bool found =  FUNC6(vout, var, VLC_VAR_FLOAT,
                                                     newval, FUNC1("Zoom mode: %s"));
            if (!found)
                FUNC7(&vout, 1, FUNC1("Zoom: x%f"), newval.f_float);
        }
    }

    (void) data;
    return VLC_SUCCESS;
}