
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; } ;
typedef TYPE_1__ MountEntry ;


 int CMP (int,int) ;
 int mount_entry_path (TYPE_1__ const*) ;
 int path_compare (int ,int ) ;

__attribute__((used)) static int mount_path_compare(const MountEntry *a, const MountEntry *b) {
        int d;


        d = path_compare(mount_entry_path(a), mount_entry_path(b));
        if (d != 0)
                return d;


        return CMP((int) a->mode, (int) b->mode);
}
