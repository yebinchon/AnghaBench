
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ n_canceled; int object_path; int id; TYPE_1__* manager; } ;
typedef TYPE_2__ Transfer ;
struct TYPE_7__ {int bus; } ;


 int assert (TYPE_2__*) ;
 int log_error_errno (int,char*) ;
 int sd_bus_emit_signal (int ,char*,char*,char*,char*,int ,int ,char*) ;
 int transfer_send_logs (TYPE_2__*,int) ;
 int transfer_unref (TYPE_2__*) ;

__attribute__((used)) static int transfer_finalize(Transfer *t, bool success) {
        int r;

        assert(t);

        transfer_send_logs(t, 1);

        r = sd_bus_emit_signal(
                        t->manager->bus,
                        "/org/freedesktop/import1",
                        "org.freedesktop.import1.Manager",
                        "TransferRemoved",
                        "uos",
                        t->id,
                        t->object_path,
                        success ? "done" :
                        t->n_canceled > 0 ? "canceled" : "failed");

        if (r < 0)
                log_error_errno(r, "Cannot emit message: %m");

        transfer_unref(t);
        return 0;
}
