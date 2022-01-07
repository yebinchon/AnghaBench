
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int job_path; int job_type; int job_id; int unit_path; int following; int sub_state; int active_state; int load_state; int description; int id; int * machine; } ;
typedef TYPE_1__ sd_bus_message ;
typedef TYPE_1__ UnitInfo ;


 int assert (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;

int bus_parse_unit_info(sd_bus_message *message, UnitInfo *u) {
        assert(message);
        assert(u);

        u->machine = ((void*)0);

        return sd_bus_message_read(
                        message,
                        "(ssssssouso)",
                        &u->id,
                        &u->description,
                        &u->load_state,
                        &u->active_state,
                        &u->sub_state,
                        &u->following,
                        &u->unit_path,
                        &u->job_id,
                        &u->job_type,
                        &u->job_path);
}
