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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_logger {int /*<<< orphan*/ * ops; } ;
struct vlc_logger_module {struct vlc_logger frontend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_logger_module*) ; 
 int /*<<< orphan*/  module_ops ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct vlc_logger_module* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  vlc_logger_load ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct vlc_logger_module*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vlc_logger *FUNC5(vlc_object_t *parent)
{
    struct vlc_logger_module *module;

    module = FUNC2(parent, sizeof (*module), "logger");
    if (FUNC1(module == NULL))
        return NULL;

    /* TODO: module configuration item */
    if (FUNC3(FUNC0(module), "logger", NULL, false,
                        vlc_logger_load, module) == NULL) {
        FUNC4(FUNC0(module));
        return NULL;
    }

    module->frontend.ops = &module_ops;
    return &module->frontend;
}