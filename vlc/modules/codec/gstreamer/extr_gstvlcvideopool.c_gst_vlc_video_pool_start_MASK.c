#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  (* start ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  p_dec; int /*<<< orphan*/  p_caps; int /*<<< orphan*/  align; int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ GstVlcVideoPool ;
typedef  int /*<<< orphan*/  GstBufferPool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean FUNC4( GstBufferPool *p_pool )
{
    GstVlcVideoPool *p_vpool = FUNC1( p_pool );

    if( !FUNC2( &p_vpool->info, &p_vpool->align,
                p_vpool->p_caps, p_vpool->p_dec ))
        return FALSE;

    return FUNC0( parent_class )->start( p_pool );
}