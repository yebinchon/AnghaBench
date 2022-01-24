#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlm_t ;
struct TYPE_8__ {int /*<<< orphan*/  psz_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  instance; int /*<<< orphan*/  i_instance; TYPE_1__ cfg; } ;
typedef  TYPE_2__ vlm_media_sys_t ;
struct TYPE_10__ {struct TYPE_10__* psz_name; int /*<<< orphan*/  p_item; int /*<<< orphan*/  p_parent; int /*<<< orphan*/  listener; int /*<<< orphan*/ * player; } ;
typedef  TYPE_3__ vlm_media_instance_sys_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11( vlm_t *p_vlm, int64_t id, vlm_media_instance_sys_t *p_instance, vlm_media_sys_t *p_media )
{
    vlc_player_t *player = p_instance->player;

    FUNC6(player);
    FUNC7(player, p_instance->listener);
    FUNC8(player);
    bool had_media = FUNC5(player);
    FUNC9(player);
    FUNC4(player);

    if (had_media)
        FUNC10( p_vlm, id, p_media->cfg.psz_name );
    FUNC3(p_instance->p_parent);

    FUNC0( p_media->i_instance, p_media->instance, p_instance );
    FUNC2( p_instance->p_item );
    FUNC1( p_instance->psz_name );
    FUNC1( p_instance );
}