
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int encode_sparse_safe; int encode_sparse_ratio; int encode_sparse_convert; } ;
typedef TYPE_1__ json_config_t ;


 int INT_MAX ;
 TYPE_1__* json_arg_init (int *,int) ;
 int json_enum_option (int *,int,int *,int *,int) ;
 int json_integer_option (int *,int,int *,int ,int ) ;

__attribute__((used)) static int json_cfg_encode_sparse_array(lua_State *l)
{
    json_config_t *cfg = json_arg_init(l, 3);

    json_enum_option(l, 1, &cfg->encode_sparse_convert, ((void*)0), 1);
    json_integer_option(l, 2, &cfg->encode_sparse_ratio, 0, INT_MAX);
    json_integer_option(l, 3, &cfg->encode_sparse_safe, 0, INT_MAX);

    return 3;
}
