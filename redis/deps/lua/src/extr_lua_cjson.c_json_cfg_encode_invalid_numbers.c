
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int encode_invalid_numbers; } ;
typedef TYPE_1__ json_config_t ;


 TYPE_1__* json_arg_init (int *,int) ;
 int json_enum_option (int *,int,int *,char const**,int) ;
 int json_verify_invalid_number_setting (int *,int *) ;

__attribute__((used)) static int json_cfg_encode_invalid_numbers(lua_State *l)
{
    static const char *options[] = { "off", "on", "null", ((void*)0) };
    json_config_t *cfg = json_arg_init(l, 1);

    json_enum_option(l, 1, &cfg->encode_invalid_numbers, options, 1);

    json_verify_invalid_number_setting(l, &cfg->encode_invalid_numbers);

    return 1;
}
