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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct inode*,struct page**,int) ; 

__attribute__((used)) static int
FUNC11(struct file *filp, struct page *pp)
{
	struct inode *ip;
	struct page *pl[1];
	int error = 0;
	fstrans_cookie_t cookie;

	FUNC0(FUNC3(pp));
	ip = pp->mapping->host;
	pl[0] = pp;

	cookie = FUNC7();
	error = -FUNC10(ip, pl, 1);
	FUNC8(cookie);

	if (error) {
		FUNC4(pp);
		FUNC2(pp);
	} else {
		FUNC1(pp);
		FUNC5(pp);
		FUNC6(pp);
	}

	FUNC9(pp);
	return (error);
}