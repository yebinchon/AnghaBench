
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int decode_max_depth; } ;
typedef TYPE_1__ json_config_t ;


 int INT_MAX ;
 TYPE_1__* json_arg_init (int *,int) ;
 int json_integer_option (int *,int,int *,int,int ) ;

__attribute__((used)) static int json_cfg_decode_max_depth(lua_State *l)
{
    json_config_t *cfg = json_arg_init(l, 1);

    return json_integer_option(l, 1, &cfg->decode_max_depth, 1, INT_MAX);
}
