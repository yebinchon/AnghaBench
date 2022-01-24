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
struct vlc_logger {int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {struct vlc_logger logger; struct vlc_logger* sink; int /*<<< orphan*/ * head; int /*<<< orphan*/ ** tailp; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_logger_early_t ;

/* Variables and functions */
 int /*<<< orphan*/  early_ops ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vlc_logger *FUNC3(struct vlc_logger *logger)
{
    vlc_logger_early_t *early = FUNC0(sizeof (*early));
    if (FUNC1(early == NULL))
        return NULL;

    early->logger.ops = &early_ops;
    FUNC2(&early->lock);
    early->head = NULL;
    early->tailp = &early->head;
    early->sink = logger;
    return &early->logger;
}