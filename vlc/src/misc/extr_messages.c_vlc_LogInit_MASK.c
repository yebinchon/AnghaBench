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
struct vlc_logger {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  logger; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;
typedef  TYPE_2__ libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct vlc_logger discard_log ; 
 struct vlc_logger* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vlc_logger*) ; 

void FUNC3(libvlc_int_t *vlc)
{
    struct vlc_logger *logger = FUNC1(FUNC0(vlc));
    if (logger == NULL)
        logger = &discard_log;

    FUNC2(vlc->obj.logger, logger);
}