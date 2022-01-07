
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_val_count; struct TYPE_4__* key_val; int value; int (* opj_free_func ) (int ) ;} ;
typedef TYPE_1__ opj_tls_t ;


 int opj_free (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void opj_tls_destroy(opj_tls_t* tls)
{
    int i;
    if (!tls) {
        return;
    }
    for (i = 0; i < tls->key_val_count; i++) {
        if (tls->key_val[i].opj_free_func) {
            tls->key_val[i].opj_free_func(tls->key_val[i].value);
        }
    }
    opj_free(tls->key_val);
    opj_free(tls);
}
