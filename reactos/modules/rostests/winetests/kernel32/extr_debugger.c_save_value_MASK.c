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
struct TYPE_3__ {char const* name; scalar_t__ size; int /*<<< orphan*/ * data; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ reg_save_value ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static DWORD FUNC3(HKEY hkey, const char *value, reg_save_value *saved)
{
    DWORD ret;
    saved->name=value;
    saved->data=0;
    saved->size=0;
    ret=FUNC2(hkey, value, NULL, &saved->type, NULL, &saved->size);
    if (ret == ERROR_SUCCESS)
    {
        saved->data=FUNC1(FUNC0(), 0, saved->size);
        FUNC2(hkey, value, NULL, &saved->type, saved->data, &saved->size);
    }
    return ret;
}