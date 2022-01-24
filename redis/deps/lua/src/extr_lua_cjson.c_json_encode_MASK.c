#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strbuf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  encode_keep_buffer; int /*<<< orphan*/  encode_buf; } ;
typedef  TYPE_1__ json_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC9(lua_State *l)
{
    json_config_t *cfg = FUNC1(l);
    strbuf_t local_encode_buf;
    strbuf_t *encode_buf;
    char *json;
    int len;

    FUNC2(l, FUNC3(l) == 1, 1, "expected 1 argument");

    if (!cfg->encode_keep_buffer) {
        /* Use private buffer */
        encode_buf = &local_encode_buf;
        FUNC6(encode_buf, 0);
    } else {
        /* Reuse existing buffer */
        encode_buf = &cfg->encode_buf;
        FUNC7(encode_buf);
    }

    FUNC0(l, cfg, 0, encode_buf);
    json = FUNC8(encode_buf, &len);

    FUNC4(l, json, len);

    if (!cfg->encode_keep_buffer)
        FUNC5(encode_buf);

    return 1;
}