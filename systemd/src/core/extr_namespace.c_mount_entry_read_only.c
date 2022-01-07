
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; scalar_t__ read_only; } ;
typedef TYPE_1__ MountEntry ;


 int INACCESSIBLE ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int READONLY ;
 int assert (TYPE_1__ const*) ;

__attribute__((used)) static bool mount_entry_read_only(const MountEntry *p) {
        assert(p);

        return p->read_only || IN_SET(p->mode, READONLY, INACCESSIBLE);
}
