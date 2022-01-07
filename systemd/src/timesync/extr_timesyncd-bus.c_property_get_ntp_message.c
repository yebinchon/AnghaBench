
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_10__ {int trans_time; int recv_time; int refid; int root_dispersion; int root_delay; int precision; int stratum; int field; } ;
struct TYPE_11__ {int samples_jitter; int packet_count; int spike; int dest_time; TYPE_1__ ntpmsg; int origin_time; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef TYPE_2__ Manager ;


 int NTP_FIELD_LEAP (int ) ;
 int NTP_FIELD_MODE (int ) ;
 int NTP_FIELD_VERSION (int ) ;
 int USEC_PER_SEC ;
 int assert (TYPE_2__*) ;
 int ntp_ts_short_to_usec (int *) ;
 int ntp_ts_to_usec (int *) ;
 int sd_bus_message_append (TYPE_2__*,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int sd_bus_message_append_array (TYPE_2__*,char,int ,int) ;
 int sd_bus_message_close_container (TYPE_2__*) ;
 int sd_bus_message_open_container (TYPE_2__*,char,char*) ;
 int timespec_load (int *) ;

__attribute__((used)) static int property_get_ntp_message(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        assert(m);
        assert(reply);

        r = sd_bus_message_open_container(reply, 'r', "uuuuittayttttbtt");
        if (r < 0)
                return r;

        r = sd_bus_message_append(reply, "uuuuitt",
                                  NTP_FIELD_LEAP(m->ntpmsg.field),
                                  NTP_FIELD_VERSION(m->ntpmsg.field),
                                  NTP_FIELD_MODE(m->ntpmsg.field),
                                  m->ntpmsg.stratum,
                                  m->ntpmsg.precision,
                                  ntp_ts_short_to_usec(&m->ntpmsg.root_delay),
                                  ntp_ts_short_to_usec(&m->ntpmsg.root_dispersion));
        if (r < 0)
                return r;

        r = sd_bus_message_append_array(reply, 'y', m->ntpmsg.refid, 4);
        if (r < 0)
                return r;

        r = sd_bus_message_append(reply, "ttttbtt",
                                  timespec_load(&m->origin_time),
                                  ntp_ts_to_usec(&m->ntpmsg.recv_time),
                                  ntp_ts_to_usec(&m->ntpmsg.trans_time),
                                  timespec_load(&m->dest_time),
                                  m->spike,
                                  m->packet_count,
                                  (usec_t) (m->samples_jitter * USEC_PER_SEC));
        if (r < 0)
                return r;

        return sd_bus_message_close_container(reply);
}
