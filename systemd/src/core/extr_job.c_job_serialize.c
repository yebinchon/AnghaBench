
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ begin_usec; scalar_t__ begin_running_usec; int bus_track; int ignore_order; int sent_dbus_new_signal; int irreversible; int state; int type; int id; } ;
typedef TYPE_1__ Job ;
typedef TYPE_1__ FILE ;


 int assert (TYPE_1__*) ;
 int bus_track_serialize (int ,TYPE_1__*,char*) ;
 int fputc (char,TYPE_1__*) ;
 int job_state_to_string (int ) ;
 int job_type_to_string (int ) ;
 int serialize_bool (TYPE_1__*,char*,int ) ;
 int serialize_item (TYPE_1__*,char*,int ) ;
 int serialize_item_format (TYPE_1__*,char*,char*,int ) ;
 int serialize_usec (TYPE_1__*,char*,scalar_t__) ;

int job_serialize(Job *j, FILE *f) {
        assert(j);
        assert(f);

        (void) serialize_item_format(f, "job-id", "%u", j->id);
        (void) serialize_item(f, "job-type", job_type_to_string(j->type));
        (void) serialize_item(f, "job-state", job_state_to_string(j->state));
        (void) serialize_bool(f, "job-irreversible", j->irreversible);
        (void) serialize_bool(f, "job-sent-dbus-new-signal", j->sent_dbus_new_signal);
        (void) serialize_bool(f, "job-ignore-order", j->ignore_order);

        if (j->begin_usec > 0)
                (void) serialize_usec(f, "job-begin", j->begin_usec);
        if (j->begin_running_usec > 0)
                (void) serialize_usec(f, "job-begin-running", j->begin_running_usec);

        bus_track_serialize(j->bus_track, f, "subscribed");


        fputc('\n', f);
        return 0;
}
