
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; int varlink_server; } ;
typedef TYPE_1__ Server ;


 int SD_EVENT_PRIORITY_NORMAL ;
 int VARLINK_SERVER_ROOT_ONLY ;
 int assert (TYPE_1__*) ;
 int varlink_server_attach_event (int ,int ,int ) ;
 int varlink_server_bind_method_many (int ,char*,int ,char*,int ,char*,int ,char*,int ) ;
 int varlink_server_listen_address (int ,char*,int) ;
 int varlink_server_new (int *,int ) ;
 int varlink_server_set_userdata (int ,TYPE_1__*) ;
 int vl_method_flush_to_var ;
 int vl_method_relinquish_var ;
 int vl_method_rotate ;
 int vl_method_synchronize ;

__attribute__((used)) static int server_open_varlink(Server *s) {
        int r;

        assert(s);

        r = varlink_server_new(&s->varlink_server, VARLINK_SERVER_ROOT_ONLY);
        if (r < 0)
                return r;

        varlink_server_set_userdata(s->varlink_server, s);

        r = varlink_server_bind_method_many(
                        s->varlink_server,
                        "io.systemd.Journal.Synchronize", vl_method_synchronize,
                        "io.systemd.Journal.Rotate", vl_method_rotate,
                        "io.systemd.Journal.FlushToVar", vl_method_flush_to_var,
                        "io.systemd.Journal.RelinquishVar", vl_method_relinquish_var);
        if (r < 0)
                return r;

        r = varlink_server_listen_address(s->varlink_server, "/run/systemd/journal/io.systemd.journal", 0600);
        if (r < 0)
                return r;

        r = varlink_server_attach_event(s->varlink_server, s->event, SD_EVENT_PRIORITY_NORMAL);
        if (r < 0)
                return r;

        return 0;
}
