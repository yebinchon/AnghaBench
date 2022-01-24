#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t n_entries; scalar_t__ entries; scalar_t__ entry_default; scalar_t__ entry_oneshot; scalar_t__ console_mode; scalar_t__ auto_firmware; scalar_t__ auto_entries; scalar_t__ editor; scalar_t__ timeout; scalar_t__ default_pattern; } ;
typedef  TYPE_1__ BootConfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(BootConfig *config) {
        size_t i;

        FUNC0(config);

        FUNC2(config->default_pattern);
        FUNC2(config->timeout);
        FUNC2(config->editor);
        FUNC2(config->auto_entries);
        FUNC2(config->auto_firmware);
        FUNC2(config->console_mode);

        FUNC2(config->entry_oneshot);
        FUNC2(config->entry_default);

        for (i = 0; i < config->n_entries; i++)
                FUNC1(config->entries + i);
        FUNC2(config->entries);
}