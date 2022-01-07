
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rw; int fstype; int node; } ;
typedef TYPE_1__ DissectedPartition ;


 int SPECIAL_LOCAL_FS_TARGET ;
 int add_mount (char const*,int ,char const*,int ,int ,int *,char const*,int ) ;
 int assert (TYPE_1__*) ;
 int path_is_busy (char const*) ;

__attribute__((used)) static int add_partition_mount(
                DissectedPartition *p,
                const char *id,
                const char *where,
                const char *description) {

        int r;
        assert(p);

        r = path_is_busy(where);
        if (r != 0)
                return r < 0 ? r : 0;

        return add_mount(
                        id,
                        p->node,
                        where,
                        p->fstype,
                        p->rw,
                        ((void*)0),
                        description,
                        SPECIAL_LOCAL_FS_TARGET);
}
