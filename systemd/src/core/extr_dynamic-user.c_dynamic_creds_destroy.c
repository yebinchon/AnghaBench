
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* group; void* user; } ;
typedef TYPE_1__ DynamicCreds ;


 int assert (TYPE_1__*) ;
 void* dynamic_user_destroy (void*) ;

void dynamic_creds_destroy(DynamicCreds *creds) {
        assert(creds);

        creds->user = dynamic_user_destroy(creds->user);
        creds->group = dynamic_user_destroy(creds->group);
}
