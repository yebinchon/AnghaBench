#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ json_token_t ;
struct TYPE_10__ {int /*<<< orphan*/  tmp; int /*<<< orphan*/ * data; int /*<<< orphan*/ * ptr; scalar_t__ current_depth; int /*<<< orphan*/  cfg; } ;
typedef  TYPE_2__ json_parse_t ;

/* Variables and functions */
 scalar_t__ T_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 

__attribute__((used)) static int FUNC10(lua_State *l)
{
    json_parse_t json;
    json_token_t token;
    size_t json_len;

    FUNC4(l, FUNC7(l) == 1, 1, "expected 1 argument");

    json.cfg = FUNC0(l);
    json.data = FUNC5(l, 1, &json_len);
    json.current_depth = 0;
    json.ptr = json.data;

    /* Detect Unicode other than UTF-8 (see RFC 4627, Sec 3)
     *
     * CJSON can support any simple data type, hence only the first
     * character is guaranteed to be ASCII (at worst: '"'). This is
     * still enough to detect whether the wrong encoding is in use. */
    if (json_len >= 2 && (!json.data[0] || !json.data[1]))
        FUNC6(l, "JSON parser does not support UTF-16 or UTF-32");

    /* Ensure the temporary buffer can hold the entire string.
     * This means we no longer need to do length checks since the decoded
     * string must be smaller than the entire json string */
    json.tmp = FUNC9(json_len);

    FUNC1(&json, &token);
    FUNC2(l, &json, &token);

    /* Ensure there is no more input left */
    FUNC1(&json, &token);

    if (token.type != T_END)
        FUNC3(l, &json, "the end", &token);

    FUNC8(json.tmp);

    return 1;
}