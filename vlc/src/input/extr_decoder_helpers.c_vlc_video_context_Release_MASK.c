#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  private_type; TYPE_1__* ops; scalar_t__ device; int /*<<< orphan*/  rc; } ;
typedef  TYPE_2__ vlc_video_context ;
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(vlc_video_context *vctx)
{
    if ( FUNC2( &vctx->rc ) )
    {
        if (vctx->device)
            FUNC3( vctx->device );
        if ( vctx->ops && vctx->ops->destroy )
            vctx->ops->destroy( FUNC4(vctx, vctx->private_type) );
        FUNC0(vctx);
    }
}