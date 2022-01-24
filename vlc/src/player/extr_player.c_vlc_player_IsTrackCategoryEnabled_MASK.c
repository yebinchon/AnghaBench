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
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_2__ {int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int DATA_ES ; 
 int UNKNOWN_ES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* cat2vars ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC2(vlc_player_t *player,
                                  enum es_format_category_e cat)
{
    FUNC0(cat >= UNKNOWN_ES && cat <= DATA_ES);
    return FUNC1(player, cat2vars[cat].var);
}