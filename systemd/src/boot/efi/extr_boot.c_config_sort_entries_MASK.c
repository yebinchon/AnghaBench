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
struct TYPE_3__ {size_t entry_count; int /*<<< orphan*/ ** entries; } ;
typedef  int /*<<< orphan*/  ConfigEntry ;
typedef  TYPE_1__ Config ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID FUNC1(Config *config) {
        UINTN i;

        for (i = 1; i < config->entry_count; i++) {
                BOOLEAN more;
                UINTN k;

                more = FALSE;
                for (k = 0; k < config->entry_count - i; k++) {
                        ConfigEntry *entry;

                        if (FUNC0(config->entries[k], config->entries[k+1]) <= 0)
                                continue;

                        entry = config->entries[k];
                        config->entries[k] = config->entries[k+1];
                        config->entries[k+1] = entry;
                        more = TRUE;
                }
                if (!more)
                        break;
        }
}