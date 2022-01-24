#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlm_t ;
typedef  int /*<<< orphan*/  vlm_media_sys_t ;
typedef  int /*<<< orphan*/  vlm_media_instance_sys_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( vlm_t *p_vlm, int64_t id, const char *psz_id )
{
    vlm_media_sys_t *p_media = FUNC0( p_vlm, id );
    vlm_media_instance_sys_t *p_instance;

    if( !p_media )
        return VLC_EGENERIC;

    p_instance = FUNC1( p_media, psz_id );
    if( !p_instance )
        return VLC_EGENERIC;

    FUNC2( p_vlm, id, p_instance, p_media );

    return VLC_SUCCESS;
}