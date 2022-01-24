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
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_3__ {scalar_t__ data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ DwarfBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ nil ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *fd, DwarfBlock *b, ulong off, ulong len)
{
	b->data = FUNC1(len);
	if(b->data == nil)
		return -1;
	if(!FUNC3(fd, off, 0) || !FUNC2(fd, (char *)b->data, len)){
		FUNC0(b->data);
		b->data = nil;
		return -1;
	}
	b->len = len;
	return 0;
}