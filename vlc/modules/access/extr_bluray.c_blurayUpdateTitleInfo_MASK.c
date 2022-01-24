#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* i_time_offset; } ;
typedef  TYPE_2__ seekpoint_t ;
struct TYPE_12__ {int i_seekpoint; int /*<<< orphan*/ * seekpoint; void* i_length; } ;
typedef  TYPE_3__ input_title_t ;
struct TYPE_13__ {unsigned int chapter_count; TYPE_1__* chapters; int /*<<< orphan*/  duration; } ;
struct TYPE_10__ {int /*<<< orphan*/  start; } ;
typedef  TYPE_4__ BLURAY_TITLE_INFO ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 () ; 

__attribute__((used)) static void FUNC6(input_title_t *t, BLURAY_TITLE_INFO *title_info)
{
    t->i_length = FUNC0(title_info->duration);

    for (int i = 0; i < t->i_seekpoint; i++)
        FUNC4( t->seekpoint[i] );
    FUNC2(t->i_seekpoint, t->seekpoint);

    /* FIXME: have libbluray expose repeating titles */
    if(FUNC3(title_info, 50, 90))
        return;

    for (unsigned int j = 0; j < title_info->chapter_count; j++) {
        seekpoint_t *s = FUNC5();
        if (!s) {
            break;
        }
        s->i_time_offset = FUNC0(title_info->chapters[j].start);

        FUNC1(t->i_seekpoint, t->seekpoint, s);
    }
}