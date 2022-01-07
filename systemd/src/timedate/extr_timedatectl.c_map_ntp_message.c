
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int int32_t ;
struct TYPE_4__ {int str; } ;
struct TYPE_5__ {int spike; TYPE_1__ reference; int jitter; int packet_count; int dest; int trans; int recv; int origin; int root_dispersion; int root_delay; int precision; int stratum; int mode; int version; int leap; } ;
typedef TYPE_2__ NTPStatusInfo ;


 int EINVAL ;
 int assert (TYPE_2__*) ;
 int memcpy (int ,void const*,size_t) ;
 int sd_bus_message_enter_container (int *,char,char*) ;
 int sd_bus_message_exit_container (int *) ;
 int sd_bus_message_read (int *,char*,int *,int *,int *,int *,int *,int *,int *) ;
 int sd_bus_message_read_array (int *,char,void const**,size_t*) ;

__attribute__((used)) static int map_ntp_message(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        NTPStatusInfo *p = userdata;
        const void *d;
        size_t sz;
        int32_t b;
        int r;

        assert(p);

        r = sd_bus_message_enter_container(m, 'r', "uuuuittayttttbtt");
        if (r < 0)
                return r;

        r = sd_bus_message_read(m, "uuuuitt",
                                &p->leap, &p->version, &p->mode, &p->stratum, &p->precision,
                                &p->root_delay, &p->root_dispersion);
        if (r < 0)
                return r;

        r = sd_bus_message_read_array(m, 'y', &d, &sz);
        if (r < 0)
                return r;

        r = sd_bus_message_read(m, "ttttbtt",
                                &p->origin, &p->recv, &p->trans, &p->dest,
                                &b, &p->packet_count, &p->jitter);
        if (r < 0)
                return r;

        r = sd_bus_message_exit_container(m);
        if (r < 0)
                return r;

        if (sz != 4)
                return -EINVAL;

        memcpy(p->reference.str, d, sz);

        p->spike = b;

        return 0;
}
