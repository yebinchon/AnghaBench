
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_4; int member_3; int const member_2; int const member_1; } ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;
typedef TYPE_1__ JsonDispatch ;





 int json_dispatch (int *,TYPE_1__ const*,int ,int ,void*) ;



 int oci_unexpected ;


__attribute__((used)) static int oci_cgroup_block_io(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {

        static const JsonDispatch table[] = {
                { "weight", 132, 130, 0, 0 },
                { "leafWeight", 132, 128, 0, 134 },
                { "weightDevice", 133, 129, 0, 0 },
                { "throttleReadBpsDevice", 133, 131, 0, 0 },
                { "throttleWriteBpsDevice", 133, 131, 0, 0 },
                { "throttleReadIOPSDevice", 133, 131, 0, 0 },
                { "throttleWriteIOPSDevice", 133, 131, 0, 0 },
                {}
        };

        return json_dispatch(v, table, oci_unexpected, flags, userdata);
}
