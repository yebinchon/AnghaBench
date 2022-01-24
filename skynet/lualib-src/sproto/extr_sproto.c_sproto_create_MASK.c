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
struct pool {int dummy; } ;
struct sproto {struct pool memory; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct sproto*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sproto*,int /*<<< orphan*/ ,int) ; 
 struct sproto* FUNC2 (struct pool*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct pool*) ; 

struct sproto *
FUNC5(const void * proto, size_t sz) {
	struct pool mem;
	struct sproto * s;
	FUNC3(&mem);
	s = FUNC2(&mem, sizeof(*s));
	if (s == NULL)
		return NULL;
	FUNC1(s, 0, sizeof(*s));
	s->memory = mem;
	if (FUNC0(s, proto, sz) == NULL) {
		FUNC4(&s->memory);
		return NULL;
	}
	return s;
}