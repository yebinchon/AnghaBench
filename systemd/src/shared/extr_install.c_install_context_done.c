
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* have_processed; void* will_process; } ;
typedef TYPE_1__ InstallContext ;


 int assert (TYPE_1__*) ;
 int install_info_free ;
 void* ordered_hashmap_free_with_destructor (void*,int ) ;

__attribute__((used)) static void install_context_done(InstallContext *c) {
        assert(c);

        c->will_process = ordered_hashmap_free_with_destructor(c->will_process, install_info_free);
        c->have_processed = ordered_hashmap_free_with_destructor(c->have_processed, install_info_free);
}
