#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stub_manager {TYPE_1__* apt; scalar_t__ refs; } ;
typedef  scalar_t__ ULONG ;
struct TYPE_2__ {int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static ULONG FUNC3(struct stub_manager *This)
{
    ULONG refs;

    FUNC0(&This->apt->cs);
    refs = ++This->refs;
    FUNC1(&This->apt->cs);

    FUNC2("before %d\n", refs - 1);

    return refs;
}