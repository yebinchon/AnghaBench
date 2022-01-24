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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*,struct writeback_control*) ; 

int
FUNC6(struct page *pp, struct writeback_control *wbc, void *data)
{
	struct address_space *mapping = data;
	fstrans_cookie_t cookie;

	FUNC0(FUNC1(pp));
	FUNC0(!FUNC2(pp));

	cookie = FUNC3();
	(void) FUNC5(mapping->host, pp, wbc);
	FUNC4(cookie);

	return (0);
}