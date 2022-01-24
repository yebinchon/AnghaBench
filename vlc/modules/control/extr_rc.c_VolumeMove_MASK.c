#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  psz_string; } ;
typedef  TYPE_2__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef  TYPE_3__ intf_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/  playlist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,float*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(intf_thread_t *intf, char const *psz_cmd,
                       vlc_value_t newval)
{
    vlc_player_t *player = FUNC5(intf->p_sys->playlist);

    float volume;
    int i_nb_steps = FUNC0(newval.psz_string);

    if( !FUNC1(psz_cmd, "voldown") )
        i_nb_steps *= -1;

    FUNC2(player);
    FUNC4(player, i_nb_steps, &volume);
    FUNC3(player);
}