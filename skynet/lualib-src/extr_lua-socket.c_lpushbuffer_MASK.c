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
struct socket_buffer {int size; struct buffer_node* tail; struct buffer_node* head; } ;
struct buffer_node {char* msg; int sz; struct buffer_node* next; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LARGE_PAGE_NODE ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct buffer_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC12(lua_State *L) {
	struct socket_buffer *sb = FUNC11(L,1);
	if (sb == NULL) {
		return FUNC4(L, "need buffer object at param 1");
	}
	char * msg = FUNC11(L,3);
	if (msg == NULL) {
		return FUNC4(L, "need message block at param 3");
	}
	int pool_index = 2;
	FUNC3(L,pool_index,LUA_TTABLE);
	int sz = FUNC2(L,4);
	FUNC8(L,pool_index,1);
	struct buffer_node * free_node = FUNC11(L,-1);	// sb poolt msg size free_node
	FUNC5(L,1);
	if (free_node == NULL) {
		int tsz = FUNC9(L,pool_index);
		if (tsz == 0)
			tsz++;
		int size = 8;
		if (tsz <= LARGE_PAGE_NODE-3) {
			size <<= tsz;
		} else {
			size <<= LARGE_PAGE_NODE-3;
		}
		FUNC1(L, size);	
		free_node = FUNC11(L,-1);
		FUNC10(L, pool_index, tsz+1);
	}
	FUNC7(L, free_node->next);	
	FUNC10(L, pool_index, 1);	// sb poolt msg size
	free_node->msg = msg;
	free_node->sz = sz;
	free_node->next = NULL;

	if (sb->head == NULL) {
		FUNC0(sb->tail == NULL);
		sb->head = sb->tail = free_node;
	} else {
		sb->tail->next = free_node;
		sb->tail = free_node;
	}
	sb->size += sz;

	FUNC6(L, sb->size);

	return 1;
}