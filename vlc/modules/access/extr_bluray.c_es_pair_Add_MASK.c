#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_array_t ;
struct TYPE_8__ {int b_recyling; int b_restart_decoders_on_reuse; int /*<<< orphan*/  fmt; scalar_t__ i_next_block_flags; int /*<<< orphan*/ * p_es; } ;
typedef  TYPE_1__ es_pair_t ;
typedef  int /*<<< orphan*/  es_out_id_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_codec; int /*<<< orphan*/  i_cat; } ;
typedef  TYPE_2__ es_format_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC6(vlc_array_t *p_array, const es_format_t *p_fmt,
                        es_out_id_t *p_es)
{
    es_pair_t *p_pair = FUNC4(sizeof(*p_pair));
    if (FUNC3(p_pair != NULL))
    {
        p_pair->p_es = p_es;
        p_pair->i_next_block_flags = 0;
        p_pair->b_recyling = false;
        p_pair->b_restart_decoders_on_reuse = true;
        if(FUNC5(p_array, p_pair) != VLC_SUCCESS)
        {
            FUNC2(p_pair);
            p_pair = NULL;
        }
        else
        {
            FUNC1(&p_pair->fmt, p_fmt->i_cat, p_fmt->i_codec);
            FUNC0(&p_pair->fmt, p_fmt);
        }
    }
    return p_pair != NULL;
}