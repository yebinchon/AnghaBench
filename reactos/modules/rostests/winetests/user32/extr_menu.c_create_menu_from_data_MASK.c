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
struct menu_data {int /*<<< orphan*/  str; int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
typedef  size_t INT ;
typedef  scalar_t__ HMENU ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HMENU FUNC6(const struct menu_data *item, INT item_count)
{
    HMENU hmenu;
    INT i;
    BOOL ret;

    hmenu = FUNC1();
    FUNC4(hmenu != 0);

    for (i = 0; i < item_count; i++)
    {
        FUNC3(0xdeadbeef);
        ret = FUNC0(hmenu, item[i].type, item[i].id, item[i].str);
        FUNC5(ret, "%d: AppendMenu(%04x, %04x, %p) error %u\n",
           i, item[i].type, item[i].id, item[i].str, FUNC2());
    }
    return hmenu;
}