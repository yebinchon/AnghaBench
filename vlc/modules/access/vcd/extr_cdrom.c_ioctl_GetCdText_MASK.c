#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_meta_t ;
struct TYPE_4__ {int i_vcdimage_handle; } ;
typedef  TYPE_1__ vcddev_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ***,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3( vlc_object_t *p_object, const vcddev_t *p_vcddev,
                     vlc_meta_t ***ppp_tracks, int *pi_tracks )
{
    uint8_t *p_text;
    int i_text;

    if( p_vcddev->i_vcdimage_handle != -1 )
        return -1;

    if( FUNC1( p_object, p_vcddev, &p_text, &i_text ) )
        return -1;

    FUNC0( ppp_tracks, pi_tracks, p_text, i_text );
    FUNC2( p_text );
    return 0;
}