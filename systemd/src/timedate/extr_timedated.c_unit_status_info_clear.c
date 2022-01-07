
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* active_state; void* unit_file_state; void* load_state; } ;
typedef TYPE_1__ UnitStatusInfo ;


 int assert (TYPE_1__*) ;
 void* mfree (void*) ;

__attribute__((used)) static void unit_status_info_clear(UnitStatusInfo *p) {
        assert(p);

        p->load_state = mfree(p->load_state);
        p->unit_file_state = mfree(p->unit_file_state);
        p->active_state = mfree(p->active_state);
}
