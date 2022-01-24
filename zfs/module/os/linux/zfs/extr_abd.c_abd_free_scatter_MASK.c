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
struct TYPE_5__ {scalar_t__ abd_size; int /*<<< orphan*/  abd_children; } ;
typedef  TYPE_1__ abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGESIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  abdstat_scatter_chunk_waste ; 
 int /*<<< orphan*/  abdstat_scatter_cnt ; 
 int /*<<< orphan*/  abdstat_scatter_data_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(abd_t *abd)
{
	FUNC3(abd);

	FUNC5(&abd->abd_children);
	FUNC0(abdstat_scatter_cnt);
	FUNC1(abdstat_scatter_data_size, -(int)abd->abd_size);
	FUNC1(abdstat_scatter_chunk_waste,
	    (int)abd->abd_size - (int)FUNC2(abd->abd_size, PAGESIZE));

	FUNC4(abd);
}