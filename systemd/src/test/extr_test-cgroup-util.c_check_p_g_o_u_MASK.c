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
typedef  scalar_t__ uid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(const char *path, int code, uid_t result) {
        uid_t uid = 0;

        FUNC0(FUNC1(path, &uid) == code);
        FUNC0(uid == result);
}