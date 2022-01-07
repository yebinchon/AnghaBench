
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int string; } ;
struct TYPE_12__ {int string_len; TYPE_2__ value; int type; } ;
typedef TYPE_3__ json_token_t ;
struct TYPE_13__ {char* ptr; int tmp; TYPE_1__* cfg; } ;
typedef TYPE_4__ json_parse_t ;
struct TYPE_10__ {char* escape2char; } ;


 int T_STRING ;
 int assert (int) ;
 scalar_t__ json_append_unicode_escape (TYPE_4__*) ;
 int json_set_token_error (TYPE_3__*,TYPE_4__*,char*) ;
 int strbuf_append_char_unsafe (int ,char) ;
 int strbuf_ensure_null (int ) ;
 int strbuf_reset (int ) ;
 int strbuf_string (int ,int *) ;

__attribute__((used)) static void json_next_string_token(json_parse_t *json, json_token_t *token)
{
    char *escape2char = json->cfg->escape2char;
    char ch;


    assert(*json->ptr == '"');


    json->ptr++;





    strbuf_reset(json->tmp);

    while ((ch = *json->ptr) != '"') {
        if (!ch) {

            json_set_token_error(token, json, "unexpected end of string");
            return;
        }


        if (ch == '\\') {

            ch = *(json->ptr + 1);


            ch = escape2char[(unsigned char)ch];
            if (ch == 'u') {
                if (json_append_unicode_escape(json) == 0)
                    continue;

                json_set_token_error(token, json,
                                     "invalid unicode escape code");
                return;
            }
            if (!ch) {
                json_set_token_error(token, json, "invalid escape code");
                return;
            }


            json->ptr++;
        }


        strbuf_append_char_unsafe(json->tmp, ch);
        json->ptr++;
    }
    json->ptr++;

    strbuf_ensure_null(json->tmp);

    token->type = T_STRING;
    token->value.string = strbuf_string(json->tmp, &token->string_len);
}
