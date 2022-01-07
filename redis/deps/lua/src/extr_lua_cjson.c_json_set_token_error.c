
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* string; } ;
struct TYPE_7__ {TYPE_1__ value; scalar_t__ index; int type; } ;
typedef TYPE_2__ json_token_t ;
struct TYPE_8__ {scalar_t__ data; scalar_t__ ptr; } ;
typedef TYPE_3__ json_parse_t ;


 int T_ERROR ;

__attribute__((used)) static void json_set_token_error(json_token_t *token, json_parse_t *json,
                                 const char *errtype)
{
    token->type = T_ERROR;
    token->index = json->ptr - json->data;
    token->value.string = errtype;
}
