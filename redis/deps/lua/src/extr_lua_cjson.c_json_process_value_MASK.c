#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  number; int /*<<< orphan*/  string; } ;
struct TYPE_6__ {int type; TYPE_1__ value; int /*<<< orphan*/  string_len; } ;
typedef  TYPE_2__ json_token_t ;
typedef  int /*<<< orphan*/  json_parse_t ;

/* Variables and functions */
#define  T_ARR_BEGIN 133 
#define  T_BOOLEAN 132 
#define  T_NULL 131 
#define  T_NUMBER 130 
#define  T_OBJ_BEGIN 129 
#define  T_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(lua_State *l, json_parse_t *json,
                               json_token_t *token)
{
    switch (token->type) {
    case T_STRING:
        FUNC5(l, token->value.string, token->string_len);
        break;;
    case T_NUMBER:
        FUNC6(l, token->value.number);
        break;;
    case T_BOOLEAN:
        FUNC3(l, token->value.boolean);
        break;;
    case T_OBJ_BEGIN:
        FUNC1(l, json);
        break;;
    case T_ARR_BEGIN:
        FUNC0(l, json);
        break;;
    case T_NULL:
        /* In Lua, setting "t[k] = nil" will delete k from the table.
         * Hence a NULL pointer lightuserdata object is used instead */
        FUNC4(l, NULL);
        break;;
    default:
        FUNC2(l, json, "value", token);
    }
}