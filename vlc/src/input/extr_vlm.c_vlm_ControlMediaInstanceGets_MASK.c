#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlm_t ;
struct TYPE_10__ {int i_instance; TYPE_3__** instance; } ;
typedef  TYPE_1__ vlm_media_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  f_rate; int /*<<< orphan*/  b_paused; int /*<<< orphan*/  d_position; void* i_length; void* i_time; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_2__ vlm_media_instance_t ;
struct TYPE_12__ {int /*<<< orphan*/  player; scalar_t__ psz_name; } ;
typedef  TYPE_3__ vlm_media_instance_sys_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__**) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 () ; 

__attribute__((used)) static int FUNC13( vlm_t *p_vlm, int64_t id, vlm_media_instance_t ***ppp_idsc, int *pi_instance )
{
    vlm_media_sys_t *p_media = FUNC11( p_vlm, id );
    vlm_media_instance_t **pp_idsc;
    int                              i_idsc;

    if( !p_media )
        return VLC_EGENERIC;

    FUNC1( i_idsc, pp_idsc );
    for( int i = 0; i < p_media->i_instance; i++ )
    {
        vlm_media_instance_sys_t *p_instance = p_media->instance[i];
        vlm_media_instance_t *p_idsc = FUNC12();
        if( p_instance->psz_name )
            p_idsc->psz_name = FUNC3( p_instance->psz_name );
        FUNC9(p_instance->player);
        p_idsc->i_time = FUNC2(FUNC7(p_instance->player));
        p_idsc->i_length = FUNC2(FUNC4(p_instance->player));
        p_idsc->d_position = FUNC5(p_instance->player);
        p_idsc->b_paused = FUNC8(p_instance->player);
        p_idsc->f_rate = FUNC6(p_instance->player);
        FUNC10(p_instance->player);

        FUNC0( i_idsc, pp_idsc, p_idsc );
    }
    *ppp_idsc = pp_idsc;
    *pi_instance = i_idsc;
    return VLC_SUCCESS;
}