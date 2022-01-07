
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct context {int quit; int * fds; } ;
typedef int sd_id128_t ;
typedef int sd_bus ;


 void* INT_TO_PTR (int) ;
 int UINT_TO_PTR (int) ;
 int assert_se (int) ;
 int enumerator2_callback ;
 int enumerator_callback ;
 int log_error (char*) ;
 int log_error_errno (int,char*) ;
 scalar_t__ sd_bus_add_fallback_vtable (int *,int *,char*,char*,int ,int *,int ) ;
 scalar_t__ sd_bus_add_node_enumerator (int *,int *,char*,int ,int *) ;
 scalar_t__ sd_bus_add_object_manager (int *,int *,char*) ;
 scalar_t__ sd_bus_add_object_vtable (int *,int *,char*,char*,int ,struct context*) ;
 int sd_bus_flush (int *) ;
 scalar_t__ sd_bus_new (int **) ;
 int sd_bus_process (int *,int *) ;
 scalar_t__ sd_bus_set_fd (int *,int ,int ) ;
 scalar_t__ sd_bus_set_server (int *,int,int ) ;
 scalar_t__ sd_bus_start (int *) ;
 int sd_bus_unref (int *) ;
 int sd_bus_wait (int *,int ) ;
 scalar_t__ sd_id128_randomize (int *) ;
 int vtable ;
 int vtable2 ;

__attribute__((used)) static void *server(void *p) {
        struct context *c = p;
        sd_bus *bus = ((void*)0);
        sd_id128_t id;
        int r;

        c->quit = 0;

        assert_se(sd_id128_randomize(&id) >= 0);

        assert_se(sd_bus_new(&bus) >= 0);
        assert_se(sd_bus_set_fd(bus, c->fds[0], c->fds[0]) >= 0);
        assert_se(sd_bus_set_server(bus, 1, id) >= 0);

        assert_se(sd_bus_add_object_vtable(bus, ((void*)0), "/foo", "org.freedesktop.systemd.test", vtable, c) >= 0);
        assert_se(sd_bus_add_object_vtable(bus, ((void*)0), "/foo", "org.freedesktop.systemd.test2", vtable, c) >= 0);
        assert_se(sd_bus_add_fallback_vtable(bus, ((void*)0), "/value", "org.freedesktop.systemd.ValueTest", vtable2, ((void*)0), UINT_TO_PTR(20)) >= 0);
        assert_se(sd_bus_add_node_enumerator(bus, ((void*)0), "/value", enumerator_callback, ((void*)0)) >= 0);
        assert_se(sd_bus_add_node_enumerator(bus, ((void*)0), "/value/a", enumerator2_callback, ((void*)0)) >= 0);
        assert_se(sd_bus_add_object_manager(bus, ((void*)0), "/value") >= 0);
        assert_se(sd_bus_add_object_manager(bus, ((void*)0), "/value/a") >= 0);

        assert_se(sd_bus_start(bus) >= 0);

        log_error("Entering event loop on server");

        while (!c->quit) {
                log_error("Loop!");

                r = sd_bus_process(bus, ((void*)0));
                if (r < 0) {
                        log_error_errno(r, "Failed to process requests: %m");
                        goto fail;
                }

                if (r == 0) {
                        r = sd_bus_wait(bus, (uint64_t) -1);
                        if (r < 0) {
                                log_error_errno(r, "Failed to wait: %m");
                                goto fail;
                        }

                        continue;
                }
        }

        r = 0;

fail:
        if (bus) {
                sd_bus_flush(bus);
                sd_bus_unref(bus);
        }

        return INT_TO_PTR(r);
}
