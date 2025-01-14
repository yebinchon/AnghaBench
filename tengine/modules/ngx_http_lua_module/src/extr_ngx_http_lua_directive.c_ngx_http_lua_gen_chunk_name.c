
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_9__ {TYPE_3__* conf_file; int pool; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_6__ {int len; char* data; } ;
struct TYPE_7__ {TYPE_1__ name; } ;
struct TYPE_8__ {int line; TYPE_2__ file; } ;


 int NGX_INT64_LEN ;
 char* ngx_palloc (int ,size_t) ;
 char* ngx_snprintf (char*,size_t,char*,size_t,char const*,int,char*,int ) ;

__attribute__((used)) static u_char *
ngx_http_lua_gen_chunk_name(ngx_conf_t *cf, const char *tag, size_t tag_len,
    size_t *chunkname_len)
{
    u_char *p, *out;
    size_t len;

    len = sizeof("=(:)") - 1 + tag_len + cf->conf_file->file.name.len
          + NGX_INT64_LEN + 1;

    out = ngx_palloc(cf->pool, len);
    if (out == ((void*)0)) {
        return ((void*)0);
    }

    if (cf->conf_file->file.name.len) {
        p = cf->conf_file->file.name.data + cf->conf_file->file.name.len;
        while (--p >= cf->conf_file->file.name.data) {
            if (*p == '/' || *p == '\\') {
                p++;
                goto found;
            }
        }

        p++;

    } else {
        p = cf->conf_file->file.name.data;
    }

found:

    p = ngx_snprintf(out, len, "=%*s(%*s:%d)%Z",
                     tag_len, tag, cf->conf_file->file.name.data
                     + cf->conf_file->file.name.len - p,
                     p, cf->conf_file->line);

    *chunkname_len = p - out - 1;

    return out;
}
