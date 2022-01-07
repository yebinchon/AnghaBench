
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* options_const; scalar_t__ options_malloc; } ;
typedef TYPE_1__ MountEntry ;


 int assert (TYPE_1__ const*) ;

__attribute__((used)) static const char *mount_entry_options(const MountEntry *p) {
        assert(p);

        return p->options_malloc ?: p->options_const;
}
