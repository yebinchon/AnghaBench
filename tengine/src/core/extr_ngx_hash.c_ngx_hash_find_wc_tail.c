
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_4__ {void* value; int hash; } ;
typedef TYPE_1__ ngx_hash_wildcard_t ;
struct TYPE_5__ {int log; } ;


 int NGX_LOG_ALERT ;
 TYPE_3__* ngx_cycle ;
 size_t ngx_hash (size_t,char) ;
 void* ngx_hash_find (int *,size_t,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,void*,...) ;

void *
ngx_hash_find_wc_tail(ngx_hash_wildcard_t *hwc, u_char *name, size_t len)
{
    void *value;
    ngx_uint_t i, key;





    key = 0;

    for (i = 0; i < len; i++) {
        if (name[i] == '.') {
            break;
        }

        key = ngx_hash(key, name[i]);
    }

    if (i == len) {
        return ((void*)0);
    }





    value = ngx_hash_find(&hwc->hash, key, name, i);





    if (value) {







        if ((uintptr_t) value & 2) {

            i++;

            hwc = (ngx_hash_wildcard_t *) ((uintptr_t) value & (uintptr_t) ~3);

            value = ngx_hash_find_wc_tail(hwc, &name[i], len - i);

            if (value) {
                return value;
            }

            return hwc->value;
        }

        return value;
    }

    return hwc->value;
}
