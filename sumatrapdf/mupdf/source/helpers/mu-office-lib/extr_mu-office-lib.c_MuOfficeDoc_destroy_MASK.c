#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* path; int /*<<< orphan*/  ctx; int /*<<< orphan*/  doc; int /*<<< orphan*/  password_sem; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ MuOfficeDoc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(MuOfficeDoc *doc)
{
	FUNC0(doc);
	FUNC5(&doc->thread);
	FUNC4(&doc->password_sem);

	FUNC3(doc->ctx, doc->doc);
	FUNC2(doc->ctx);
	FUNC1(doc->path);
	FUNC1(doc);
}