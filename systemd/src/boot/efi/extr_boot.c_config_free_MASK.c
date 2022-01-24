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
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t UINTN ;
struct TYPE_3__ {size_t entry_count; int /*<<< orphan*/ * entry_oneshot; int /*<<< orphan*/ * options_edit; int /*<<< orphan*/ * entry_default_pattern; int /*<<< orphan*/ * entries; } ;
typedef  TYPE_1__ Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID FUNC2(Config *config) {
        UINTN i;

        for (i = 0; i < config->entry_count; i++)
                FUNC1(config->entries[i]);
        FUNC0(config->entries);
        FUNC0(config->entry_default_pattern);
        FUNC0(config->options_edit);
        FUNC0(config->entry_oneshot);
}