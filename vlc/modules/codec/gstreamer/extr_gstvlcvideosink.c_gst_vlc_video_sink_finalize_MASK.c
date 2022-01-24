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
struct TYPE_5__ {int /*<<< orphan*/  (* finalize ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {scalar_t__ p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoSink ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  parent_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( GObject *p_obj )
{
    GstVlcVideoSink *p_vsink = FUNC0( p_obj );

    if( p_vsink->p_allocator )
        FUNC2( p_vsink->p_allocator );

    FUNC1( parent_class)->finalize( p_obj );
}