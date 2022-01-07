
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int encode_buf; } ;
typedef TYPE_1__ json_config_t ;


 TYPE_1__* lua_touserdata (int *,int) ;
 int strbuf_free (int *) ;

__attribute__((used)) static int json_destroy_config(lua_State *l)
{
    json_config_t *cfg;

    cfg = lua_touserdata(l, 1);
    if (cfg)
        strbuf_free(&cfg->encode_buf);
    cfg = ((void*)0);

    return 0;
}
