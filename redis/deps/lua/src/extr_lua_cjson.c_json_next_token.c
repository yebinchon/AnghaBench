
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* json_token_type_t ;
struct TYPE_14__ {int boolean; } ;
struct TYPE_16__ {void* type; TYPE_1__ value; scalar_t__* index; } ;
typedef TYPE_3__ json_token_t ;
struct TYPE_17__ {int data; TYPE_2__* cfg; scalar_t__* ptr; } ;
typedef TYPE_4__ json_parse_t ;
struct TYPE_15__ {scalar_t__ decode_invalid_numbers; void** ch2token; } ;


 void* T_BOOLEAN ;
 void* T_END ;
 void* T_ERROR ;
 void* T_NULL ;
 void* T_UNKNOWN ;
 void* T_WHITESPACE ;
 scalar_t__ json_is_invalid_number (TYPE_4__*) ;
 int json_next_number_token (TYPE_4__*,TYPE_3__*) ;
 int json_next_string_token (TYPE_4__*,TYPE_3__*) ;
 int json_set_token_error (TYPE_3__*,TYPE_4__*,char*) ;
 int strncmp (scalar_t__*,char*,int) ;

__attribute__((used)) static void json_next_token(json_parse_t *json, json_token_t *token)
{
    const json_token_type_t *ch2token = json->cfg->ch2token;
    int ch;


    while (1) {
        ch = (unsigned char)*(json->ptr);
        token->type = ch2token[ch];
        if (token->type != T_WHITESPACE)
            break;
        json->ptr++;
    }



    token->index = json->ptr - json->data;


    if (token->type == T_ERROR) {
        json_set_token_error(token, json, "invalid token");
        return;
    }

    if (token->type == T_END) {
        return;
    }


    if (token->type != T_UNKNOWN) {
        json->ptr++;
        return;
    }







    if (ch == '"') {
        json_next_string_token(json, token);
        return;
    } else if (ch == '-' || ('0' <= ch && ch <= '9')) {
        if (!json->cfg->decode_invalid_numbers && json_is_invalid_number(json)) {
            json_set_token_error(token, json, "invalid number");
            return;
        }
        json_next_number_token(json, token);
        return;
    } else if (!strncmp(json->ptr, "true", 4)) {
        token->type = T_BOOLEAN;
        token->value.boolean = 1;
        json->ptr += 4;
        return;
    } else if (!strncmp(json->ptr, "false", 5)) {
        token->type = T_BOOLEAN;
        token->value.boolean = 0;
        json->ptr += 5;
        return;
    } else if (!strncmp(json->ptr, "null", 4)) {
        token->type = T_NULL;
        json->ptr += 4;
        return;
    } else if (json->cfg->decode_invalid_numbers &&
               json_is_invalid_number(json)) {





        json_next_number_token(json, token);
        return;
    }


    json_set_token_error(token, json, "invalid token");
}
