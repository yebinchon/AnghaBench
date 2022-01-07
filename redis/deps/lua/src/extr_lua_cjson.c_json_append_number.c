
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strbuf_t ;
typedef int lua_State ;
struct TYPE_4__ {int encode_invalid_numbers; int encode_number_precision; } ;
typedef TYPE_1__ json_config_t ;


 int FPCONV_G_FMT_BUFSIZE ;
 int fpconv_g_fmt (int ,double,int ) ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 int json_encode_exception (int *,TYPE_1__*,int *,int,char*) ;
 double lua_tonumber (int *,int) ;
 int strbuf_append_mem (int *,char*,int) ;
 int strbuf_empty_ptr (int *) ;
 int strbuf_ensure_empty_length (int *,int ) ;
 int strbuf_extend_length (int *,int) ;

__attribute__((used)) static void json_append_number(lua_State *l, json_config_t *cfg,
                               strbuf_t *json, int lindex)
{
    double num = lua_tonumber(l, lindex);
    int len;

    if (cfg->encode_invalid_numbers == 0) {

        if (isinf(num) || isnan(num))
            json_encode_exception(l, cfg, json, lindex, "must not be NaN or Inf");
    } else if (cfg->encode_invalid_numbers == 1) {


        if (isnan(num)) {
            strbuf_append_mem(json, "nan", 3);
            return;
        }
    } else {

        if (isinf(num) || isnan(num)) {
            strbuf_append_mem(json, "null", 4);
            return;
        }
    }

    strbuf_ensure_empty_length(json, FPCONV_G_FMT_BUFSIZE);
    len = fpconv_g_fmt(strbuf_empty_ptr(json), num, cfg->encode_number_precision);
    strbuf_extend_length(json, len);
}
