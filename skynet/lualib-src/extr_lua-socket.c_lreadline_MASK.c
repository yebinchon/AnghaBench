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
struct socket_buffer {int offset; int size; struct buffer_node* head; } ;
struct buffer_node {int sz; struct buffer_node* next; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_node*,int,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct socket_buffer* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct socket_buffer*,int,size_t) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct socket_buffer * sb = FUNC5(L, 1);
	if (sb == NULL) {
		return FUNC2(L, "Need buffer object at param 1");
	}
	// only check
	bool check = !FUNC3(L, 2);
	size_t seplen = 0;
	const char *sep = FUNC1(L,3,&seplen);
	int i;
	struct buffer_node *current = sb->head;
	if (current == NULL)
		return 0;
	int from = sb->offset;
	int bytes = current->sz - from;
	for (i=0;i<=sb->size - (int)seplen;i++) {
		if (FUNC0(current, from, sep, seplen)) {
			if (check) {
				FUNC4(L,true);
			} else {
				FUNC6(L, sb, i+seplen, seplen);
				sb->size -= i+seplen;
			}
			return 1;
		}
		++from;
		--bytes;
		if (bytes == 0) {
			current = current->next;
			from = 0;
			if (current == NULL)
				break;
			bytes = current->sz;
		}
	}
	return 0;
}