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
struct socket_sendbuffer {size_t sz; void* buffer; void* type; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TLIGHTUSERDATA 130 
#define  LUA_TTABLE 129 
#define  LUA_TUSERDATA 128 
 void* SOCKET_BUFFER_MEMORY ; 
 void* SOCKET_BUFFER_OBJECT ; 
 void* SOCKET_BUFFER_RAWPOINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (size_t) ; 

__attribute__((used)) static void
FUNC9(lua_State *L, int index, struct socket_sendbuffer *buf) {
	void *buffer;
	switch(FUNC7(L, index)) {
		size_t len;
	case LUA_TUSERDATA:
		// lua full useobject must be a raw pointer, it can't be a socket object or a memory object.
		buf->type = SOCKET_BUFFER_RAWPOINTER;
		buf->buffer = FUNC6(L, index);
		if (FUNC3(L, index+1)) {
			buf->sz = FUNC5(L, index+1);
		} else {
			buf->sz = FUNC4(L, index);
		}
		break;
	case LUA_TLIGHTUSERDATA: {
		int sz = -1;
		if (FUNC3(L, index+1)) {
			sz = FUNC5(L,index+1);
		}
		if (sz < 0) {
			buf->type = SOCKET_BUFFER_OBJECT;
		} else {
			buf->type = SOCKET_BUFFER_MEMORY;
		}
		buf->buffer = FUNC6(L,index);
		buf->sz = (size_t)sz;
		break;
		}
	case LUA_TTABLE:
		// concat the table as a string
		len = FUNC1(L, index);
		buffer = FUNC8(len);
		FUNC0(L, index, buffer, len);
		buf->type = SOCKET_BUFFER_MEMORY;
		buf->buffer = buffer;
		buf->sz = len;
		break;
	default:
		buf->type = SOCKET_BUFFER_RAWPOINTER;
		buf->buffer = FUNC2(L, index, &buf->sz);
		break;
	}
}