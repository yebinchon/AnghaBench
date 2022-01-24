#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__** allowed_subcommands; int /*<<< orphan*/  flags; int /*<<< orphan*/  allowed_commands; void* patterns; void* passwords; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int USER_COMMAND_BITS_COUNT ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(user *dst, user *src) {
    FUNC3(dst->passwords);
    FUNC3(dst->patterns);
    dst->passwords = FUNC2(src->passwords);
    dst->patterns = FUNC2(src->patterns);
    FUNC4(dst->allowed_commands,src->allowed_commands,
           sizeof(dst->allowed_commands));
    dst->flags = src->flags;
    FUNC1(dst);
    /* Copy the allowed subcommands array of array of SDS strings. */
    if (src->allowed_subcommands) {
        for (int j = 0; j < USER_COMMAND_BITS_COUNT; j++) {
            if (src->allowed_subcommands[j]) {
                for (int i = 0; src->allowed_subcommands[j][i]; i++)
                {
                    FUNC0(dst, j,
                        src->allowed_subcommands[j][i]);
                }
            }
        }
    }
}