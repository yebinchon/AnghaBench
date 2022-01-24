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
struct bson {scalar_t__ size; scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bson*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 
 int FUNC2 (struct bson*) ; 
 int /*<<< orphan*/  FUNC3 (struct bson*,size_t,int) ; 

__attribute__((used)) static void
FUNC4(struct bson *b, const void * buffer, size_t sz) {
	int length = FUNC2(b);
	FUNC0(b,sz);
	FUNC1(b->ptr + b->size, buffer, sz);	// include sub type
	b->size+=sz;
	FUNC3(b, sz-1, length);	// not include sub type
}