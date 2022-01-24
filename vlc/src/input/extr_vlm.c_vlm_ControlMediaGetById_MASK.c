#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int i_media; TYPE_3__** media; } ;
typedef  TYPE_2__ vlm_t ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_8__ {TYPE_1__ cfg; } ;
typedef  TYPE_3__ vlm_media_sys_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */

__attribute__((used)) static vlm_media_sys_t *FUNC0( vlm_t *p_vlm, int64_t id )
{
    for( int i = 0; i < p_vlm->i_media; i++ )
    {
        if( p_vlm->media[i]->cfg.id == id )
            return p_vlm->media[i];
    }
    return NULL;
}