
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* path; struct TYPE_6__* name; } ;
typedef TYPE_1__ UnitStatusInfo ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int unit_status_info_clear (TYPE_1__*) ;

__attribute__((used)) static void unit_status_info_free(UnitStatusInfo *p) {
        assert(p);

        unit_status_info_clear(p);
        free(p->name);
        free(p->path);
        free(p);
}
