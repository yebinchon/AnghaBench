
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ perpetual; } ;
struct TYPE_6__ {int proc_flags; } ;
typedef TYPE_1__ Mount ;


 scalar_t__ FLAGS_SET (int ,int ) ;
 int MOUNT_PROC_IS_MOUNTED ;
 TYPE_4__* UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool mount_is_mounted(Mount *m) {
        assert(m);

        return UNIT(m)->perpetual || FLAGS_SET(m->proc_flags, MOUNT_PROC_IS_MOUNTED);
}
