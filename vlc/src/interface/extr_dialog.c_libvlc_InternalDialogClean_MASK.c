#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_6__ {TYPE_1__* p_dialog_provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(libvlc_int_t *p_libvlc)
{
    FUNC0(p_libvlc != NULL);
    vlc_dialog_provider *p_provider = FUNC3(p_libvlc)->p_dialog_provider;

    if (p_provider == NULL)
        return;
    FUNC5(&p_provider->lock);
    FUNC1(p_provider);
    FUNC6(&p_provider->lock);

    FUNC4(&p_provider->lock);
    FUNC2(p_provider);
    FUNC3(p_libvlc)->p_dialog_provider = NULL;
}