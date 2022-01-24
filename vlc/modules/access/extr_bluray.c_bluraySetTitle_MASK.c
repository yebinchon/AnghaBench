#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {unsigned int i_title; int i_longest_title; int /*<<< orphan*/  bluray; scalar_t__ b_menu; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int BLURAY_TITLE_FIRST_PLAY ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC5(demux_t *p_demux, int i_title)
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if (p_sys->b_menu) {
        int result;
        if (i_title <= 0) {
            FUNC3(p_demux, "Playing TopMenu Title");
            result = FUNC0(p_sys->bluray, -1);
        } else if (i_title >= (int)p_sys->i_title - 1) {
            FUNC3(p_demux, "Playing FirstPlay Title");
            result = FUNC1(p_sys->bluray, BLURAY_TITLE_FIRST_PLAY);
        } else {
            FUNC3(p_demux, "Playing Title %i", i_title);
            result = FUNC1(p_sys->bluray, i_title);
        }

        if (result == 0) {
            FUNC4(p_demux, "cannot play bd title '%d'", i_title);
            return VLC_EGENERIC;
        }

        return VLC_SUCCESS;
    }

    /* Looking for the main title, ie the longest duration */
    if (i_title < 0)
        i_title = p_sys->i_longest_title;
    else if ((unsigned)i_title > p_sys->i_title)
        return VLC_EGENERIC;

    FUNC3(p_demux, "Selecting Title %i", i_title);

    if (FUNC2(p_sys->bluray, i_title) == 0) {
        FUNC4(p_demux, "cannot select bd title '%d'", i_title);
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}