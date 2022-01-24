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
typedef  int /*<<< orphan*/  vlc_logger_t ;
struct vlc_logger {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * logger; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;
typedef  TYPE_2__ libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct vlc_logger* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vlc_logger*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

int FUNC6(libvlc_int_t *vlc)
{
    vlc_logger_t *logger = FUNC5();
    if (FUNC1(logger == NULL))
        return -1;
    vlc->obj.logger = logger;

    struct vlc_logger *early = FUNC2(logger);
    if (early != NULL) {
        FUNC4(logger, early);
        FUNC3(FUNC0(vlc));
    }
    return 0;
}