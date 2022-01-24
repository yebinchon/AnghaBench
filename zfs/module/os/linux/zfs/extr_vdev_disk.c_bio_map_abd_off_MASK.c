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
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct bio*,int /*<<< orphan*/ *,unsigned int,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct bio*,char*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC4(struct bio *bio, abd_t *abd, unsigned int size, size_t off)
{
	if (FUNC0(abd))
		return (FUNC3(bio, ((char *)FUNC2(abd)) + off, size));

	return (FUNC1(bio, abd, size, off));
}