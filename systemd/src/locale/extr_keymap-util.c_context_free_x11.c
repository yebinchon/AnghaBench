
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* x11_variant; void* x11_model; void* x11_options; void* x11_layout; } ;
typedef TYPE_1__ Context ;


 void* mfree (void*) ;

__attribute__((used)) static void context_free_x11(Context *c) {
        c->x11_layout = mfree(c->x11_layout);
        c->x11_options = mfree(c->x11_options);
        c->x11_model = mfree(c->x11_model);
        c->x11_variant = mfree(c->x11_variant);
}
