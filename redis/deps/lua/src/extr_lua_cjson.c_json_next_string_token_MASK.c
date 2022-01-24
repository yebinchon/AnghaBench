#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  string; } ;
struct TYPE_12__ {int /*<<< orphan*/  string_len; TYPE_2__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ json_token_t ;
struct TYPE_13__ {char* ptr; int /*<<< orphan*/  tmp; TYPE_1__* cfg; } ;
typedef  TYPE_4__ json_parse_t ;
struct TYPE_10__ {char* escape2char; } ;

/* Variables and functions */
 int /*<<< orphan*/  T_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(json_parse_t *json, json_token_t *token)
{
    char *escape2char = json->cfg->escape2char;
    char ch;

    /* Caller must ensure a string is next */
    FUNC0(*json->ptr == '"');

    /* Skip " */
    json->ptr++;

    /* json->tmp is the temporary strbuf used to accumulate the
     * decoded string value.
     * json->tmp is sized to handle JSON containing only a string value.
     */
    FUNC5(json->tmp);

    while ((ch = *json->ptr) != '"') {
        if (!ch) {
            /* Premature end of the string */
            FUNC2(token, json, "unexpected end of string");
            return;
        }

        /* Handle escapes */
        if (ch == '\\') {
            /* Fetch escape character */
            ch = *(json->ptr + 1);

            /* Translate escape code and append to tmp string */
            ch = escape2char[(unsigned char)ch];
            if (ch == 'u') {
                if (FUNC1(json) == 0)
                    continue;

                FUNC2(token, json,
                                     "invalid unicode escape code");
                return;
            }
            if (!ch) {
                FUNC2(token, json, "invalid escape code");
                return;
            }

            /* Skip '\' */
            json->ptr++;
        }
        /* Append normal character or translated single character
         * Unicode escapes are handled above */
        FUNC3(json->tmp, ch);
        json->ptr++;
    }
    json->ptr++;    /* Eat final quote (") */

    FUNC4(json->tmp);

    token->type = T_STRING;
    token->value.string = FUNC6(json->tmp, &token->string_len);
}