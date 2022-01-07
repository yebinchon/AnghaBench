
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vfs_used; } ;
struct TYPE_6__ {int min_use; } ;
struct TYPE_8__ {TYPE_2__ space; TYPE_1__ metrics; } ;
typedef TYPE_3__ JournalStorage ;


 int MAX (int ,int ) ;
 int assert (TYPE_3__*) ;

__attribute__((used)) static void patch_min_use(JournalStorage *storage) {
        assert(storage);







        storage->metrics.min_use = MAX(storage->metrics.min_use, storage->space.vfs_used);
}
