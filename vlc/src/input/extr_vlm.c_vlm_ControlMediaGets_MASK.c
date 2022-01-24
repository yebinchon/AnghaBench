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
struct TYPE_5__ {int i_media; TYPE_1__** media; } ;
typedef  TYPE_2__ vlm_t ;
typedef  int /*<<< orphan*/  vlm_media_t ;
struct TYPE_4__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( vlm_t *p_vlm, vlm_media_t ***ppp_dsc, int *pi_dsc )
{
    vlm_media_t **pp_dsc;
    int                     i_dsc;

    FUNC1( i_dsc, pp_dsc );
    for( int i = 0; i < p_vlm->i_media; i++ )
    {
        vlm_media_t *p_dsc = FUNC2( &p_vlm->media[i]->cfg );
        FUNC0( i_dsc, pp_dsc, p_dsc );
    }

    *ppp_dsc = pp_dsc;
    *pi_dsc = i_dsc;

    return VLC_SUCCESS;
}