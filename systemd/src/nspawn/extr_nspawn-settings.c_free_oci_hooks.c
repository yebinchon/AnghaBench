
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int env; int args; struct TYPE_4__* path; } ;
typedef TYPE_1__ OciHook ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void free_oci_hooks(OciHook *h, size_t n) {
        size_t i;

        assert(h || n == 0);

        for (i = 0; i < n; i++) {
                free(h[i].path);
                strv_free(h[i].args);
                strv_free(h[i].env);
        }

        free(h);
}
