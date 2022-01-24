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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vout_thread_t *FUNC4 (libvlc_media_player_t *mp, size_t num)
{
    vout_thread_t *p_vout = NULL;
    size_t n;
    vout_thread_t **pp_vouts = FUNC0 (mp, &n);
    if (pp_vouts == NULL)
        goto err;

    if (num < n)
        p_vout = pp_vouts[num];

    for (size_t i = 0; i < n; i++)
        if (i != num)
            FUNC3(pp_vouts[i]);
    FUNC1 (pp_vouts);

    if (p_vout == NULL)
err:
        FUNC2 ("Video output not active");
    return p_vout;
}