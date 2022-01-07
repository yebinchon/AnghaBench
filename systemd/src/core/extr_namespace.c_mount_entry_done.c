
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* options_malloc; void* source_malloc; void* path_malloc; } ;
typedef TYPE_1__ MountEntry ;


 int assert (TYPE_1__*) ;
 void* mfree (void*) ;

__attribute__((used)) static void mount_entry_done(MountEntry *p) {
        assert(p);

        p->path_malloc = mfree(p->path_malloc);
        p->source_malloc = mfree(p->source_malloc);
        p->options_malloc = mfree(p->options_malloc);
}
