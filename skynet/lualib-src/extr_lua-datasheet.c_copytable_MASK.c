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
typedef  int /*<<< orphan*/  uint32_t ;
struct table {int array; int dict; int /*<<< orphan*/ * type; } ;
struct proxy {scalar_t__ index; scalar_t__ data; } ;
struct document {scalar_t__ n; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  VALUE_STRING ; 
 struct table* FUNC0 (struct document const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct document const*) ; 

__attribute__((used)) static void
FUNC5(lua_State *L, int tbl, struct proxy *p) {
	const struct document * doc = (const struct document *)p->data; 
	if (p->index < 0 || p->index >= doc->n) {
		FUNC1(L, "Invalid proxy (index = %d, total = %d)", p->index, (int)doc->n);
	}
	const struct table * t = FUNC0(doc, p->index);
	if (t == NULL) {
		FUNC1(L, "Invalid proxy (index = %d)", p->index);
	}
	const uint32_t * v = (const uint32_t *)((const char *)t + sizeof(uint32_t) + sizeof(uint32_t) + ((t->array + t->dict + 3) & ~3));
	int i;
	for (i=0;i<t->array;i++) {
		FUNC4(L, v++, t->type[i], doc);
		FUNC3(L, tbl, i+1);
	}
	for (i=0;i<t->dict;i++) {
		FUNC4(L, v++, VALUE_STRING, doc);
		FUNC4(L, v++, t->type[t->array+i], doc);
		FUNC2(L, tbl);
	}
}