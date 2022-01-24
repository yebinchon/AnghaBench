#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_8__ {scalar_t__ f_float; struct TYPE_8__* psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;

/* Variables and functions */
 int VLC_VAR_FLOAT ; 
 int /*<<< orphan*/  VLC_VAR_GETCHOICES ; 
 int VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,size_t*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 

__attribute__((used)) static inline void
FUNC6(vout_thread_t *vout,
                   char const *varname, int vartype, bool next)
{
    vlc_value_t val;
    FUNC3(vout, varname, &val);
    size_t num_choices;
    vlc_value_t *choices;
    FUNC2(vout, varname, VLC_VAR_GETCHOICES,
               &num_choices, &choices, NULL);

    vlc_value_t *choice = choices;
    for (size_t curidx = 0; curidx < num_choices; ++curidx, ++choice)
        if ((vartype == VLC_VAR_FLOAT &&
             choice->f_float == val.f_float) ||
            (vartype == VLC_VAR_STRING &&
             !FUNC1(choice->psz_string, val.psz_string)))
        {
            curidx += next ? +1 : -1;
            if (next && curidx == num_choices)
                curidx = 0;
            else if (!next && curidx == (size_t)-1)
                curidx = num_choices - 1;
            choice = choices + curidx;
            break;
        }
    if (choice == choices + num_choices)
        choice = choices;
    if (vartype == VLC_VAR_FLOAT)
        FUNC4(vout, varname, choice->f_float);
    else if (vartype == VLC_VAR_STRING)
        FUNC5(vout, varname, choice->psz_string);

    if (vartype == VLC_VAR_STRING)
    {
        FUNC0(val.psz_string);
        for (size_t i = 0; i < num_choices; ++i)
            FUNC0(choices[i].psz_string);
    }
    FUNC0(choices);
}