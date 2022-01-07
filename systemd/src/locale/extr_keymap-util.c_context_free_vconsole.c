
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* vc_keymap_toggle; void* vc_keymap; } ;
typedef TYPE_1__ Context ;


 void* mfree (void*) ;

__attribute__((used)) static void context_free_vconsole(Context *c) {
        c->vc_keymap = mfree(c->vc_keymap);
        c->vc_keymap_toggle = mfree(c->vc_keymap_toggle);
}
