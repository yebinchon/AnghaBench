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
typedef  int /*<<< orphan*/  es_out_t ;
struct TYPE_5__ {int /*<<< orphan*/  fmt_out; int /*<<< orphan*/ * p_dec_record; int /*<<< orphan*/ * p_clock; TYPE_1__* p_pgrm; int /*<<< orphan*/ * p_dec; } ;
typedef  TYPE_2__ es_out_id_t ;
struct TYPE_4__ {int /*<<< orphan*/ * p_master_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( es_out_t *out, es_out_id_t *p_es )
{
    FUNC0(out);

    if( !p_es->p_dec )
        return;

    FUNC2( p_es->p_dec );
    p_es->p_dec = NULL;
    if( p_es->p_pgrm->p_master_clock == p_es->p_clock )
        p_es->p_pgrm->p_master_clock = NULL;
    FUNC3( p_es->p_clock );
    p_es->p_clock = NULL;

    if( p_es->p_dec_record )
    {
        FUNC2( p_es->p_dec_record );
        p_es->p_dec_record = NULL;
    }

    FUNC1( &p_es->fmt_out );
}