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
typedef  int /*<<< orphan*/  uint8_t ;
struct skynet_socket_message {char* buffer; int type; int /*<<< orphan*/  ud; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  SKYNET_SOCKET_TYPE_ACCEPT 133 
#define  SKYNET_SOCKET_TYPE_CLOSE 132 
#define  SKYNET_SOCKET_TYPE_CONNECT 131 
#define  SKYNET_SOCKET_TYPE_DATA 130 
#define  SKYNET_SOCKET_TYPE_ERROR 129 
#define  SKYNET_SOCKET_TYPE_WARNING 128 
 int /*<<< orphan*/  TYPE_CLOSE ; 
 int /*<<< orphan*/  TYPE_ERROR ; 
 int /*<<< orphan*/  TYPE_OPEN ; 
 int /*<<< orphan*/  TYPE_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct skynet_socket_message* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC10(lua_State *L) {
	struct skynet_socket_message *message = FUNC7(L,2);
	int size = FUNC3(L,3);
	char * buffer = message->buffer;
	if (buffer == NULL) {
		buffer = (char *)(message+1);
		size -= sizeof(*message);
	} else {
		size = -1;
	}

	FUNC6(L, 1);

	switch(message->type) {
	case SKYNET_SOCKET_TYPE_DATA:
		// ignore listen id (message->id)
		FUNC0(size == -1);	// never padding string
		return FUNC2(L, message->id, (uint8_t *)buffer, message->ud);
	case SKYNET_SOCKET_TYPE_CONNECT:
		// ignore listen fd connect
		return 1;
	case SKYNET_SOCKET_TYPE_CLOSE:
		// no more data in fd (message->id)
		FUNC1(L, message->id);
		FUNC5(L, FUNC8(TYPE_CLOSE));
		FUNC4(L, message->id);
		return 3;
	case SKYNET_SOCKET_TYPE_ACCEPT:
		FUNC5(L, FUNC8(TYPE_OPEN));
		// ignore listen id (message->id);
		FUNC4(L, message->ud);
		FUNC9(L, buffer, size);
		return 4;
	case SKYNET_SOCKET_TYPE_ERROR:
		// no more data in fd (message->id)
		FUNC1(L, message->id);
		FUNC5(L, FUNC8(TYPE_ERROR));
		FUNC4(L, message->id);
		FUNC9(L, buffer, size);
		return 4;
	case SKYNET_SOCKET_TYPE_WARNING:
		FUNC5(L, FUNC8(TYPE_WARNING));
		FUNC4(L, message->id);
		FUNC4(L, message->ud);
		return 4;
	default:
		// never get here
		return 1;
	}
}