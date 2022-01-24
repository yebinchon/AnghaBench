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
struct vlc_logger_operations {int dummy; } ;
struct vlc_logger {int /*<<< orphan*/ * ops; } ;
struct vlc_logger_external {struct vlc_logger logger; void* opaque; struct vlc_logger_operations const* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  external_ops ; 
 struct vlc_logger_external* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vlc_logger *
FUNC2(const struct vlc_logger_operations *ops, void *opaque)
{
    struct vlc_logger_external *ext = FUNC0(sizeof (*ext));
    if (FUNC1(ext == NULL))
        return NULL;

    ext->logger.ops = &external_ops;
    ext->ops = ops;
    ext->opaque = opaque;
    return &ext->logger;
}