#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct demux_sys {size_t chapter_count; size_t chapter_gap; int /*<<< orphan*/  null_names; int /*<<< orphan*/  length; } ;
typedef  size_t ssize_t ;
struct TYPE_9__ {TYPE_3__** seekpoint; int /*<<< orphan*/  i_seekpoint; int /*<<< orphan*/ * psz_name; int /*<<< orphan*/  i_length; } ;
typedef  TYPE_1__ input_title_t ;
struct TYPE_10__ {struct demux_sys* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_11__ {size_t i_time_offset; int /*<<< orphan*/  psz_name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 TYPE_3__** FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 TYPE_3__* FUNC4 () ; 

__attribute__((used)) static input_title_t *
FUNC5(demux_t *demux, size_t idx)
{
    struct demux_sys *sys = demux->p_sys;

    input_title_t *t = FUNC3();
    if (!t)
        return NULL;

    t->i_length = sys->length;
    if (!sys->null_names
     && FUNC0(t->psz_name, "Mock Title %zu", idx) == -1)
    {
        t->psz_name = NULL;
        FUNC2(t);
        return NULL;
    }
    t->seekpoint = FUNC1(sys->chapter_count, sizeof(*t->seekpoint));
    if (!t->seekpoint)
    {
        FUNC2(t);
        return NULL;
    }

    for (ssize_t i = 0; i < sys->chapter_count; ++i)
    {
        t->seekpoint[i] = FUNC4();
        if (!t->seekpoint[i])
        {
            FUNC2(t);
            return NULL;
        }
        t->i_seekpoint++;
        if (!sys->null_names
         && FUNC0(&t->seekpoint[i]->psz_name, "Mock Chapter %zu-%zu", idx, i)
            == -1)
        {
            FUNC2(t);
            return NULL;
        }
        t->seekpoint[i]->i_time_offset = i * sys->chapter_gap;
    }
    return t;
}