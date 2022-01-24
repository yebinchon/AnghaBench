#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  psz_language; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_1__ es_format_t ;
struct TYPE_9__ {int /*<<< orphan*/  pl_info_lock; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {scalar_t__ lang; } ;
typedef  TYPE_3__ BLURAY_STREAM_INFO ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(demux_sys_t *p_sys, es_format_t *p_fmt)
{
    FUNC3(&p_sys->pl_info_lock);

    BLURAY_STREAM_INFO *p_stream = FUNC0(p_sys, p_fmt->i_id);
    if(p_stream)
    {
        FUNC1(p_fmt->psz_language);
        p_fmt->psz_language = FUNC2((const char *)p_stream->lang, 3);
    }

    FUNC4(&p_sys->pl_info_lock);
}