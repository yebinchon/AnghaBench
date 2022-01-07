
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef int uint64_t ;
struct TYPE_4__ {int properties; } ;
typedef TYPE_1__ Settings ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 scalar_t__ CGROUP_BLKIO_WEIGHT_MAX ;
 scalar_t__ CGROUP_BLKIO_WEIGHT_MIN ;
 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int bus_log_create_error (int) ;
 int json_log (int *,int ,int ,char*) ;
 scalar_t__ json_variant_unsigned (int *) ;
 int sd_bus_message_append (int ,char*,char*,char*,int ) ;
 int settings_allocate_properties (TYPE_1__*) ;

__attribute__((used)) static int oci_cgroup_block_io_weight(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        Settings *s = userdata;
        uintmax_t k;
        int r;

        assert(s);

        k = json_variant_unsigned(v);
        if (k < CGROUP_BLKIO_WEIGHT_MIN || k > CGROUP_BLKIO_WEIGHT_MAX)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "Block I/O weight out of range.");

        r = settings_allocate_properties(s);
        if (r < 0)
                return r;

        r = sd_bus_message_append(s->properties, "(sv)", "BlockIOWeight", "t", (uint64_t) k);
        if (r < 0)
                return bus_log_create_error(r);

        return 0;
}
