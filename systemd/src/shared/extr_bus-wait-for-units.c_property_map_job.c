
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_3__ {int job_id; } ;
typedef TYPE_1__ WaitForItem ;


 int assert (TYPE_1__*) ;
 int sd_bus_message_read (int *,char*,int *,char const**) ;

__attribute__((used)) static int property_map_job(
                sd_bus *bus,
                const char *member,
                sd_bus_message *m,
                sd_bus_error *error,
                void *userdata) {

        WaitForItem *item = userdata;
        const char *path;
        uint32_t id;
        int r;

        assert(item);

        r = sd_bus_message_read(m, "(uo)", &id, &path);
        if (r < 0)
                return r;

        item->job_id = id;
        return 0;
}
