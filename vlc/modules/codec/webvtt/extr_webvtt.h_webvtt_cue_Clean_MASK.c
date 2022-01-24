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
struct TYPE_3__ {int /*<<< orphan*/  psz_id; int /*<<< orphan*/  psz_text; int /*<<< orphan*/  psz_attrs; } ;
typedef  TYPE_1__ webvtt_cue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1( webvtt_cue_t *c )
{
    FUNC0( c->psz_attrs );
    FUNC0( c->psz_text );
    FUNC0( c->psz_id );
}