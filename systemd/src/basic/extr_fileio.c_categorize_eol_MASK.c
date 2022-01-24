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
typedef  int /*<<< orphan*/  ReadLineFlags ;
typedef  int /*<<< orphan*/  EndOfLineMarker ;

/* Variables and functions */
 int /*<<< orphan*/  EOL_NONE ; 
 int /*<<< orphan*/  EOL_TEN ; 
 int /*<<< orphan*/  EOL_THIRTEEN ; 
 int /*<<< orphan*/  EOL_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READ_LINE_ONLY_NUL ; 

__attribute__((used)) static EndOfLineMarker FUNC1(char c, ReadLineFlags flags) {

        if (!FUNC0(flags, READ_LINE_ONLY_NUL)) {
                if (c == '\n')
                        return EOL_TEN;
                if (c == '\r')
                        return EOL_THIRTEEN;
        }

        if (c == '\0')
                return EOL_ZERO;

        return EOL_NONE;
}