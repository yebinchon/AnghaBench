
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_4; int member_3; int const member_2; int const member_1; } ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;
typedef TYPE_1__ JsonDispatch ;






 int json_dispatch (int *,TYPE_1__ const*,int ,int ,void*) ;
 int oci_unexpected ;


__attribute__((used)) static int oci_linux(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {

        static const JsonDispatch table[] = {
                { "namespaces", 141, 135, 0, 0 },
                { "uidMappings", 141, 129, 0, 0 },
                { "gidMappings", 141, 129, 0, 0 },
                { "devices", 141, 137, 0, 0 },
                { "cgroupsPath", 139, 138, 0, 0 },
                { "resources", 140, 133, 0, 0 },
                { "intelRdt", 140, 128, 0, 142 },
                { "sysctl", 140, 130, 0, 0 },
                { "seccomp", 140, 131, 0, 0 },
                { "rootfsPropagation", 139, 132, 0, 0 },
                { "maskedPaths", 141, 136, 0, 0 },
                { "readonlyPaths", 141, 134, 0, 0 },
                { "mountLabel", 139, 128, 0, 142 },
                {}
        };

        return json_dispatch(v, table, oci_unexpected, flags, userdata);
}
