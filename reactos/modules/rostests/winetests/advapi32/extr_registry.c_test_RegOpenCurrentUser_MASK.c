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
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    HKEY key;
    LONG ret;

    key = HKEY_CURRENT_USER;
    ret = FUNC2(KEY_READ, &key);
    FUNC3(!ret, "got %d, error %d\n", ret, FUNC0());
    FUNC3(key != HKEY_CURRENT_USER, "got %p\n", key);
    FUNC1(key);
}