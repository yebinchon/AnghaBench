#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct report_media_subitems {int count; int /*<<< orphan*/ * items; } ;
struct ctx {int dummy; } ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_5__ {int i_children; TYPE_1__** pp_children; } ;
typedef  TYPE_2__ input_item_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct report_media_subitems) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ctx* FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_media_subitems_changed ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(vlc_player_t *player, input_item_t *media,
                           input_item_node_t *subitems, void *data)
{
    (void) media;
    struct ctx *ctx = FUNC2(player, data);

    struct report_media_subitems report = {
        .count = subitems->i_children,
        .items = FUNC4(subitems->i_children, sizeof(input_item_t)),
    };
    FUNC1(report.items);
    for (int i = 0; i < subitems->i_children; ++i)
        report.items[i] = FUNC3(subitems->pp_children[i]->p_item);
    FUNC0(on_media_subitems_changed, report);
}