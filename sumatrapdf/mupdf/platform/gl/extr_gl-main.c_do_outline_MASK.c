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
struct list {int dummy; } ;
typedef  int /*<<< orphan*/  fz_outline ;

/* Variables and functions */
 int /*<<< orphan*/  BOTH ; 
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct list*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outline_w ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct list*) ; 

__attribute__((used)) static void FUNC6(fz_outline *node)
{
	static struct list list;
	FUNC2(L, BOTH, NW, 0, 0);
	FUNC4(&list, FUNC0(node, 65535), outline_w, 0, 1);
	FUNC1(&list, 65535, node, 0);
	FUNC5(&list);
	FUNC3(&outline_w, 150, 500, R);
}