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
struct TYPE_2__ {int id; } ;
struct uncomplete {TYPE_1__ pack; struct uncomplete* next; } ;
struct queue {struct uncomplete** hash; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct queue* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uncomplete*,int /*<<< orphan*/ ,int) ; 
 struct uncomplete* FUNC3 (int) ; 

__attribute__((used)) static struct uncomplete *
FUNC4(lua_State *L, int fd) {
	struct queue *q = FUNC0(L);
	int h = FUNC1(fd);
	struct uncomplete * uc = FUNC3(sizeof(struct uncomplete));
	FUNC2(uc, 0, sizeof(*uc));
	uc->next = q->hash[h];
	uc->pack.id = fd;
	q->hash[h] = uc;

	return uc;
}