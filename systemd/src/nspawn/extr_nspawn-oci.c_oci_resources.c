
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


__attribute__((used)) static int oci_resources(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {

        static const JsonDispatch table[] = {
                { "devices", 135, 131, 0, 0 },
                { "memory", 134, 130, 0, 0 },
                { "cpu", 134, 132, 0, 0 },
                { "blockIO", 134, 133, 0, 0 },
                { "hugepageLimits", 135, 128, 0, 0 },
                { "network", 134, 128, 0, 0 },
                { "pids", 134, 129, 0, 0 },
                { "rdma", 134, 128, 0, 0 },
                {}
        };

        return json_dispatch(v, table, oci_unexpected, flags, userdata);
}
