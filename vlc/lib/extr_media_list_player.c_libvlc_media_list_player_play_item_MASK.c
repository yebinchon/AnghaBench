#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_mi; int /*<<< orphan*/  p_mlist; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(libvlc_media_list_player_t * p_mlp, libvlc_media_t * p_md)
{
    FUNC3(p_mlp);
    libvlc_media_list_path_t path = FUNC0(p_mlp->p_mlist, p_md);
    if (!path)
    {
        FUNC2("Item not found in media list");
        FUNC5(p_mlp);
        return -1;
    }

    FUNC4(p_mlp, path);
    FUNC1(p_mlp->p_mi);
    FUNC5(p_mlp);
    return 0;
}