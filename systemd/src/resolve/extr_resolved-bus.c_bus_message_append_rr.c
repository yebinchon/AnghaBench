
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int wire_format_size; int wire_format; TYPE_1__* key; } ;
typedef TYPE_2__ sd_bus_message ;
struct TYPE_12__ {int type; int class; } ;
typedef TYPE_2__ DnsResourceRecord ;


 int assert (TYPE_2__*) ;
 int dns_resource_record_to_wire_format (TYPE_2__*,int) ;
 int sd_bus_message_append (TYPE_2__*,char*,int,int ,int ) ;
 int sd_bus_message_append_array (TYPE_2__*,char,int ,int ) ;
 int sd_bus_message_close_container (TYPE_2__*) ;
 int sd_bus_message_open_container (TYPE_2__*,char,char*) ;

__attribute__((used)) static int bus_message_append_rr(sd_bus_message *m, DnsResourceRecord *rr, int ifindex) {
        int r;

        assert(m);
        assert(rr);

        r = sd_bus_message_open_container(m, 'r', "iqqay");
        if (r < 0)
                return r;

        r = sd_bus_message_append(m, "iqq",
                                  ifindex,
                                  rr->key->class,
                                  rr->key->type);
        if (r < 0)
                return r;

        r = dns_resource_record_to_wire_format(rr, 0);
        if (r < 0)
                return r;

        r = sd_bus_message_append_array(m, 'y', rr->wire_format, rr->wire_format_size);
        if (r < 0)
                return r;

        return sd_bus_message_close_container(m);
}
