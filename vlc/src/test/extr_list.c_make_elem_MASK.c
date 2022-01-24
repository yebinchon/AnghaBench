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
struct vlc_list {int dummy; } ;
struct test_elem {int i; struct vlc_list node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct test_elem* FUNC1 (int) ; 

__attribute__((used)) static struct vlc_list *FUNC2(int i)
{
    struct test_elem *e = FUNC1(sizeof (*e));
    if (e == NULL)
        FUNC0();

    e->i = i;
    return &e->node;
}