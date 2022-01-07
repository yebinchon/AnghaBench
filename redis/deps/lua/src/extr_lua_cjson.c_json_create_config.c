
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* escape2char; void** ch2token; int encode_buf; int encode_number_precision; int encode_keep_buffer; int decode_invalid_numbers; int encode_invalid_numbers; int decode_max_depth; int encode_max_depth; int encode_sparse_safe; int encode_sparse_ratio; int encode_sparse_convert; } ;
typedef TYPE_1__ json_config_t ;


 int DEFAULT_DECODE_INVALID_NUMBERS ;
 int DEFAULT_DECODE_MAX_DEPTH ;
 int DEFAULT_ENCODE_INVALID_NUMBERS ;
 int DEFAULT_ENCODE_KEEP_BUFFER ;
 int DEFAULT_ENCODE_MAX_DEPTH ;
 int DEFAULT_ENCODE_NUMBER_PRECISION ;
 int DEFAULT_SPARSE_CONVERT ;
 int DEFAULT_SPARSE_RATIO ;
 int DEFAULT_SPARSE_SAFE ;
 void* T_ARR_BEGIN ;
 void* T_ARR_END ;
 void* T_COLON ;
 void* T_COMMA ;
 void* T_END ;
 void* T_ERROR ;
 void* T_OBJ_BEGIN ;
 void* T_OBJ_END ;
 void* T_UNKNOWN ;
 void* T_WHITESPACE ;
 int json_destroy_config ;
 int lua_newtable (int *) ;
 TYPE_1__* lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int strbuf_init (int *,int ) ;

__attribute__((used)) static void json_create_config(lua_State *l)
{
    json_config_t *cfg;
    int i;

    cfg = lua_newuserdata(l, sizeof(*cfg));


    lua_newtable(l);
    lua_pushcfunction(l, json_destroy_config);
    lua_setfield(l, -2, "__gc");
    lua_setmetatable(l, -2);

    cfg->encode_sparse_convert = DEFAULT_SPARSE_CONVERT;
    cfg->encode_sparse_ratio = DEFAULT_SPARSE_RATIO;
    cfg->encode_sparse_safe = DEFAULT_SPARSE_SAFE;
    cfg->encode_max_depth = DEFAULT_ENCODE_MAX_DEPTH;
    cfg->decode_max_depth = DEFAULT_DECODE_MAX_DEPTH;
    cfg->encode_invalid_numbers = DEFAULT_ENCODE_INVALID_NUMBERS;
    cfg->decode_invalid_numbers = DEFAULT_DECODE_INVALID_NUMBERS;
    cfg->encode_keep_buffer = DEFAULT_ENCODE_KEEP_BUFFER;
    cfg->encode_number_precision = DEFAULT_ENCODE_NUMBER_PRECISION;
    for (i = 0; i < 256; i++)
        cfg->ch2token[i] = T_ERROR;


    cfg->ch2token['{'] = T_OBJ_BEGIN;
    cfg->ch2token['}'] = T_OBJ_END;
    cfg->ch2token['['] = T_ARR_BEGIN;
    cfg->ch2token[']'] = T_ARR_END;
    cfg->ch2token[','] = T_COMMA;
    cfg->ch2token[':'] = T_COLON;
    cfg->ch2token['\0'] = T_END;
    cfg->ch2token[' '] = T_WHITESPACE;
    cfg->ch2token['\t'] = T_WHITESPACE;
    cfg->ch2token['\n'] = T_WHITESPACE;
    cfg->ch2token['\r'] = T_WHITESPACE;


    cfg->ch2token['f'] = T_UNKNOWN;
    cfg->ch2token['i'] = T_UNKNOWN;
    cfg->ch2token['I'] = T_UNKNOWN;
    cfg->ch2token['n'] = T_UNKNOWN;
    cfg->ch2token['N'] = T_UNKNOWN;
    cfg->ch2token['t'] = T_UNKNOWN;
    cfg->ch2token['"'] = T_UNKNOWN;
    cfg->ch2token['+'] = T_UNKNOWN;
    cfg->ch2token['-'] = T_UNKNOWN;
    for (i = 0; i < 10; i++)
        cfg->ch2token['0' + i] = T_UNKNOWN;


    for (i = 0; i < 256; i++)
        cfg->escape2char[i] = 0;
    cfg->escape2char['"'] = '"';
    cfg->escape2char['\\'] = '\\';
    cfg->escape2char['/'] = '/';
    cfg->escape2char['b'] = '\b';
    cfg->escape2char['t'] = '\t';
    cfg->escape2char['n'] = '\n';
    cfg->escape2char['f'] = '\f';
    cfg->escape2char['r'] = '\r';
    cfg->escape2char['u'] = 'u';
}
