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
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ data; int /*<<< orphan*/  size; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ reg_save_value ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(HKEY hkey, reg_save_value *saved)
{
    if (saved->data)
    {
        FUNC3(hkey, saved->name, 0, saved->type, saved->data, saved->size);
        FUNC1(FUNC0(), 0, saved->data);
    }
    else
        FUNC2(hkey, saved->name);
}