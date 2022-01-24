#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* psz_id; int /*<<< orphan*/  settings; int /*<<< orphan*/  p_cssstyle; } ;
typedef  TYPE_1__ webvtt_dom_cue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4( webvtt_dom_cue_t *p_cue )
{
    FUNC1( p_cue->p_cssstyle );
    FUNC3( p_cue );
    FUNC2( &p_cue->settings );
    FUNC0( p_cue->psz_id );
    FUNC0( p_cue );
}