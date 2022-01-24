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
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  document ;

/* Variables and functions */
 int REPLY_QUERYFAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC12(lua_State *L) {
	size_t data_len = 0;
	const char * data = FUNC2(L,1,&data_len);
	struct {
//		int32_t length; // total message size, including this
		int32_t request_id; // identifier for this message
		int32_t response_id; // requestID from the original request
							// (used in reponses from db)
		int32_t opcode; // request type 
		int32_t flags;
		int32_t cursor_id[2];
		int32_t starting;
		int32_t number;
	} const *reply = (const void *)data;

	if (data_len < sizeof(*reply)) {
		FUNC5(L, 0);
		return 1;
	}

	int id = FUNC1(reply->response_id);
	int flags = FUNC1(reply->flags);
	if (flags & REPLY_QUERYFAILURE) {
		FUNC5(L,0);
		FUNC6(L, id);
		FUNC7(L, (void *)(reply+1));
		return 3;
	}

	int starting_from = FUNC1(reply->starting);
	int number = FUNC1(reply->number);
	int sz = (int)data_len - sizeof(*reply);
	const uint8_t * doc = (const uint8_t *)(reply+1);

	if (FUNC4(L,2)) {
		int i = 1;
		while (sz > 4) {
			FUNC7(L, (void *)doc);
			FUNC11(L, 2, i);

			int32_t doc_len = FUNC0((document)doc);

			doc += doc_len;
			sz -= doc_len;

			++i;
		}
		if (i != number + 1) {
			FUNC5(L,0);
			FUNC6(L, id);
			return 2;
		}
		int c = FUNC10(L, 2);
		for (;i<=c;i++) {
			FUNC9(L);
			FUNC11(L, 2, i);
		}
	} else {
		if (sz >= 4) {
			sz -= FUNC0((document)doc);
		}
	}
	if (sz != 0) {
		return FUNC3(L, "Invalid result bson document");
	}
	FUNC5(L,1);
	FUNC6(L, id);
	if (number == 0)
		FUNC9(L);
	else
		FUNC7(L, (void *)(reply+1));
	if (reply->cursor_id[0] == 0 && reply->cursor_id[1]==0) {
		// closed cursor
		FUNC9(L);
	} else {
		FUNC8(L, (const char *)(reply->cursor_id), 8);
	}
	FUNC6(L, starting_from);

	return 5;
}