
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {size_t len; size_t* level; TYPE_1__ name; } ;
typedef TYPE_2__ ngx_path_t ;


 size_t NGX_MAX_PATH_LEVEL ;
 int ngx_memcpy (char*,char*,size_t) ;

void
ngx_create_hashed_filename(ngx_path_t *path, u_char *file, size_t len)
{
    size_t i, level;
    ngx_uint_t n;

    i = path->name.len + 1;

    file[path->name.len + path->len] = '/';

    for (n = 0; n < NGX_MAX_PATH_LEVEL; n++) {
        level = path->level[n];

        if (level == 0) {
            break;
        }

        len -= level;
        file[i - 1] = '/';
        ngx_memcpy(&file[i], &file[len], level);
        i += level + 1;
    }
}
