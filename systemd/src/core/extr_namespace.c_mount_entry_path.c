
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* path_const; scalar_t__ path_malloc; } ;
typedef TYPE_1__ MountEntry ;


 int assert (TYPE_1__ const*) ;

__attribute__((used)) static const char *mount_entry_path(const MountEntry *p) {
        assert(p);




        return p->path_malloc ?: p->path_const;
}
