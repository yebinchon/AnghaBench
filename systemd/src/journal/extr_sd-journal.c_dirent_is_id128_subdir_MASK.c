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
struct dirent {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_LNK ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dirent const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct dirent *de) {
        FUNC1(de);

        if (!FUNC0(de->d_type, DT_DIR, DT_LNK, DT_UNKNOWN))
                return false;

        return FUNC2(de->d_name);
}