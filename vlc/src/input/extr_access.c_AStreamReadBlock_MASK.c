#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct vlc_access_stream_private {scalar_t__ input; } ;
struct input_stats {int /*<<< orphan*/  input_bitrate; } ;
struct TYPE_10__ {struct TYPE_10__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  i_buffer; } ;
typedef  TYPE_2__ block_t ;
struct TYPE_12__ {struct input_stats* stats; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 struct vlc_access_stream_private* FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static block_t *FUNC6(stream_t *s, bool *restrict eof)
{
    stream_t *access = s->p_sys;
    block_t * block;

    if (FUNC3(access))
    {
        *eof = true;
        return NULL;
    }
    if (FUNC2())
        return NULL;

    block = FUNC5(access);

    if (block != NULL)
    {
        struct vlc_access_stream_private *priv = FUNC4(s);
        struct input_stats *stats =
            priv->input ? FUNC0(priv->input)->stats : NULL;
        if (stats != NULL)
            FUNC1(&stats->input_bitrate, block->i_buffer);
    }

    return block;
}