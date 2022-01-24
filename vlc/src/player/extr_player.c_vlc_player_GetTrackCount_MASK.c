#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t size; } ;
typedef  TYPE_1__ vlc_player_track_vector ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_input {int dummy; } ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 struct vlc_player_input* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct vlc_player_input*,int) ; 

size_t
FUNC2(vlc_player_t *player, enum es_format_category_e cat)
{
    struct vlc_player_input *input = FUNC0(player);

    if (!input)
        return 0;
    vlc_player_track_vector *vec = FUNC1(input, cat);
    if (!vec)
        return 0;
    return vec->size;
}