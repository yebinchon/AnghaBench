
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int number; } ;
struct TYPE_9__ {TYPE_1__ value; int type; } ;
typedef TYPE_2__ json_token_t ;
struct TYPE_10__ {char* ptr; } ;
typedef TYPE_3__ json_parse_t ;


 int T_NUMBER ;
 int fpconv_strtod (char*,char**) ;
 int json_set_token_error (TYPE_2__*,TYPE_3__*,char*) ;

__attribute__((used)) static void json_next_number_token(json_parse_t *json, json_token_t *token)
{
    char *endptr;

    token->type = T_NUMBER;
    token->value.number = fpconv_strtod(json->ptr, &endptr);
    if (json->ptr == endptr)
        json_set_token_error(token, json, "invalid number");
    else
        json->ptr = endptr;

    return;
}
