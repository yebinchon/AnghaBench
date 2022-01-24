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
struct TYPE_3__ {scalar_t__ seek_offset; int /*<<< orphan*/  mp_callback_lock; int /*<<< orphan*/  seek_pending; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 

__attribute__((used)) static void *FUNC8(void *data)
{
    libvlc_media_list_player_t *mlp = data;

    FUNC5(&mlp->mp_callback_lock);
    FUNC0(&mlp->mp_callback_lock);

    for (;;)
    {
        int canc;

        while (mlp->seek_offset == 0)
            FUNC4(&mlp->seek_pending, &mlp->mp_callback_lock);

        canc = FUNC7();
        FUNC1(mlp, mlp->seek_offset);
        mlp->seek_offset = 0;
        FUNC6(canc);
    }

    FUNC3();
    FUNC2();
}