#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  p_child; } ;
typedef  TYPE_1__ webvtt_dom_cue_t ;
typedef  int /*<<< orphan*/  text_segment_t ;
struct render_variables_s {int dummy; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct render_variables_s*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static text_segment_t *FUNC1( decoder_t *p_dec,
                                             struct render_variables_s *p_vars,
                                             const webvtt_dom_cue_t *p_cue )
{
    return FUNC0( p_dec, p_vars, p_cue, p_cue->p_child );
}