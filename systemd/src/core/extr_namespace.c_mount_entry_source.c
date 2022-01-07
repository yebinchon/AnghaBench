
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* source_const; scalar_t__ source_malloc; } ;
typedef TYPE_1__ MountEntry ;


 int assert (TYPE_1__ const*) ;

__attribute__((used)) static const char *mount_entry_source(const MountEntry *p) {
        assert(p);

        return p->source_malloc ?: p->source_const;
}
