
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int key_val_count; TYPE_1__* key_val; } ;
typedef TYPE_2__ opj_tls_t ;
struct TYPE_4__ {int key; void* value; } ;



void* opj_tls_get(opj_tls_t* tls, int key)
{
    int i;
    for (i = 0; i < tls->key_val_count; i++) {
        if (tls->key_val[i].key == key) {
            return tls->key_val[i].value;
        }
    }
    return ((void*)0);
}
