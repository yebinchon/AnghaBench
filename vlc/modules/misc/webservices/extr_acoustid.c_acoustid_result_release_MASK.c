#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int count; TYPE_3__* p_recordings; } ;
struct TYPE_6__ {TYPE_1__ recordings; TYPE_3__* psz_id; } ;
typedef  TYPE_2__ acoustid_result_t ;
struct TYPE_7__ {struct TYPE_7__* psz_title; struct TYPE_7__* psz_artist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

void FUNC1( acoustid_result_t * r )
{
    FUNC0( r->psz_id );
    for ( unsigned int i=0; i<r->recordings.count; i++ )
    {
        FUNC0( r->recordings.p_recordings[ i ].psz_artist );
        FUNC0( r->recordings.p_recordings[ i ].psz_title );
    }
    FUNC0( r->recordings.p_recordings );
}