#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
struct TYPE_7__ {int /*<<< orphan*/ * p_mi; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(libvlc_media_list_player_t * p_mlp, libvlc_media_player_t * p_mi)
{
    libvlc_media_player_t *p_oldmi;

    FUNC0(p_mi != NULL);
    FUNC3(p_mi);

    FUNC4(p_mlp);
    FUNC5(p_mlp);
    p_oldmi = p_mlp->p_mi;
    p_mlp->p_mi = p_mi;
    FUNC1(p_mlp);
    FUNC6(p_mlp);

    FUNC2(p_oldmi);
}