
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_11__ {int cookie; scalar_t__ patch_sender; int sender; scalar_t__ sealed; } ;
typedef TYPE_1__ sd_bus_message ;
typedef TYPE_1__ sd_bus ;


 int BUS_MESSAGE_COOKIE (TYPE_1__*) ;
 int MAX (int ,int ) ;
 int assert (TYPE_1__*) ;
 int next_cookie (TYPE_1__*) ;
 int sd_bus_get_method_call_timeout (TYPE_1__*,int *) ;
 int sd_bus_message_seal (TYPE_1__*,int ,int ) ;
 int sd_bus_message_set_sender (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int bus_seal_message(sd_bus *b, sd_bus_message *m, usec_t timeout) {
        int r;

        assert(b);
        assert(m);

        if (m->sealed) {



                b->cookie = MAX(b->cookie, BUS_MESSAGE_COOKIE(m));
                return 0;
        }

        if (timeout == 0) {
                r = sd_bus_get_method_call_timeout(b, &timeout);
                if (r < 0)
                        return r;
        }

        if (!m->sender && b->patch_sender) {
                r = sd_bus_message_set_sender(m, b->patch_sender);
                if (r < 0)
                        return r;
        }

        r = next_cookie(b);
        if (r < 0)
                return r;

        return sd_bus_message_seal(m, b->cookie, timeout);
}
