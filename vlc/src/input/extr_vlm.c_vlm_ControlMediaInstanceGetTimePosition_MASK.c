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
typedef  int /*<<< orphan*/  vlm_media_sys_t ;
struct TYPE_3__ {int /*<<< orphan*/  player; } ;
typedef  TYPE_1__ vlm_media_instance_sys_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC7( vlm_t *p_vlm, int64_t id, const char *psz_id, int64_t *pi_time, double *pd_position )
{
    vlm_media_sys_t *p_media = FUNC5( p_vlm, id );
    vlm_media_instance_sys_t *p_instance;

    if( !p_media )
        return VLC_EGENERIC;

    p_instance = FUNC6( p_media, psz_id );
    if( !p_instance )
        return VLC_EGENERIC;

    FUNC3(p_instance->player);
    if( pi_time )
        *pi_time = FUNC0(FUNC2(p_instance->player)); 
    if( pd_position )
        *pd_position = FUNC1(p_instance->player);
    FUNC4(p_instance->player);
    return VLC_SUCCESS;
}