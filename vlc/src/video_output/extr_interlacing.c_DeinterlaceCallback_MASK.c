#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
typedef  void* vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  VOUT_CONTROL_CHANGE_INTERLACE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int const,char*,int const) ; 
 char* FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (TYPE_2__*,char*) ; 
 char* FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(vlc_object_t *object, char const *cmd,
                               vlc_value_t oldval, vlc_value_t newval, void *data)
{
    FUNC1(cmd); FUNC1(oldval); FUNC1(newval); FUNC1(data);
    vout_thread_t *vout = (vout_thread_t *)object;

    /* */
    const int  deinterlace_state = FUNC6(vout, "deinterlace");
    char       *mode             = FUNC7(vout,  "deinterlace-mode");
    const bool is_needed         = FUNC5(vout,    "deinterlace-needed");
    if (!mode || !FUNC0(mode))
    {
        FUNC2(mode);
        return VLC_EGENERIC;
    }

    /* */
    char *old = FUNC4(vout, "sout-deinterlace-mode");
    FUNC8(vout, "sout-deinterlace-mode", mode);

    FUNC3(vout, "deinterlace %d, mode %s, is_needed %d", deinterlace_state, mode, is_needed);
    if (deinterlace_state == 0 || (deinterlace_state < 0 && !is_needed))
        FUNC9(&vout->p->control,
                              VOUT_CONTROL_CHANGE_INTERLACE, false);
    else
        FUNC9(&vout->p->control,
                              VOUT_CONTROL_CHANGE_INTERLACE, true);

    /* */
    FUNC2(old);
    FUNC2(mode);
    return VLC_SUCCESS;
}