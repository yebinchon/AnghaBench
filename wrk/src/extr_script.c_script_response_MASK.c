#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {char* buffer; char* cursor; } ;
typedef  TYPE_1__ buffer ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(lua_State *L, int status, buffer *headers, buffer *body) {
    FUNC3(L, "response");
    FUNC5(L, status);
    FUNC4(L);

    for (char *c = headers->buffer; c < headers->cursor; ) {
        c = FUNC0(L, c);
        c = FUNC0(L, c);
        FUNC7(L, -3);
    }

    FUNC6(L, body->buffer, body->cursor - body->buffer);
    FUNC2(L, 3, 0);

    FUNC1(headers);
    FUNC1(body);
}