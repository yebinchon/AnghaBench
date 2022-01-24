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
typedef  int /*<<< orphan*/  vlm_t ;
typedef  int /*<<< orphan*/  vlm_media_t ;
struct TYPE_3__ {int /*<<< orphan*/  cfg; } ;
typedef  TYPE_1__ vlm_media_sys_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2( vlm_t *p_vlm, int64_t id, vlm_media_t **pp_dsc )
{
    vlm_media_sys_t *p_media = FUNC0( p_vlm, id );
    if( !p_media )
        return VLC_EGENERIC;

    *pp_dsc = FUNC1( &p_media->cfg );
    return VLC_SUCCESS;
}