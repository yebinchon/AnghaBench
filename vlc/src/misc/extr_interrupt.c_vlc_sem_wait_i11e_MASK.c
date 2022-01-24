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
typedef  int /*<<< orphan*/  vlc_sem_t ;
typedef  int /*<<< orphan*/  vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_interrupt_cleanup ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_interrupt_sem ; 
 int /*<<< orphan*/ * vlc_interrupt_var ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(vlc_sem_t *sem)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx == NULL)
        return FUNC4(sem), 0;

    FUNC3(ctx, vlc_interrupt_sem, sem);

    FUNC1(vlc_interrupt_cleanup, ctx);
    FUNC4(sem);
    FUNC0();

    return FUNC2(ctx);
}