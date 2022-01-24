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
struct skynet_socket_message {scalar_t__ type; scalar_t__ id; scalar_t__ ud; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ SKYNET_SOCKET_TYPE_UDP ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 struct skynet_socket_message* FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (struct skynet_socket_message*,int*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	struct skynet_socket_message *message = FUNC4(L,1);
	int size = FUNC0(L,2);

	FUNC1(L, message->type);
	FUNC1(L, message->id);
	FUNC1(L, message->ud);
	if (message->buffer == NULL) {
		FUNC3(L, (char *)(message+1),size - sizeof(*message));
	} else {
		FUNC2(L, message->buffer);
	}
	if (message->type == SKYNET_SOCKET_TYPE_UDP) {
		int addrsz = 0;
		const char * addrstring = FUNC5(message, &addrsz);
		if (addrstring) {
			FUNC3(L, addrstring, addrsz);
			return 5;
		}
	}
	return 4;
}