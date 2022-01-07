
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int PortableChange ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int PORTABLE_RUNTIME ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int portable_changes_free (int *,size_t) ;
 int portable_detach (int ,char const*,int ,int **,size_t*,int *) ;
 int reply_portable_changes (TYPE_1__*,int *,size_t) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,int*) ;

__attribute__((used)) static int method_detach_image(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        PortableChange *changes = ((void*)0);
        Manager *m = userdata;
        size_t n_changes = 0;
        const char *name_or_path;
        int r, runtime;

        assert(message);
        assert(m);





        r = sd_bus_message_read(message, "sb", &name_or_path, &runtime);
        if (r < 0)
                return r;

        r = bus_verify_polkit_async(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.portable1.attach-images",
                        ((void*)0),
                        0,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = portable_detach(
                        sd_bus_message_get_bus(message),
                        name_or_path,
                        runtime ? PORTABLE_RUNTIME : 0,
                        &changes,
                        &n_changes,
                        error);
        if (r < 0)
                goto finish;

        r = reply_portable_changes(message, changes, n_changes);

finish:
        portable_changes_free(changes, n_changes);
        return r;
}
