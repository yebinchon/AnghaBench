
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int encode_keep_buffer; int encode_buf; } ;
typedef TYPE_1__ json_config_t ;


 TYPE_1__* json_arg_init (int *,int) ;
 int json_enum_option (int *,int,int*,int *,int) ;
 int strbuf_free (int *) ;
 int strbuf_init (int *,int ) ;

__attribute__((used)) static int json_cfg_encode_keep_buffer(lua_State *l)
{
    json_config_t *cfg = json_arg_init(l, 1);
    int old_value;

    old_value = cfg->encode_keep_buffer;

    json_enum_option(l, 1, &cfg->encode_keep_buffer, ((void*)0), 1);


    if (old_value ^ cfg->encode_keep_buffer) {
        if (cfg->encode_keep_buffer)
            strbuf_init(&cfg->encode_buf, 0);
        else
            strbuf_free(&cfg->encode_buf);
    }

    return 1;
}
