
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bind_to_device; } ;
typedef TYPE_1__ Socket ;


 int UNIT (TYPE_1__*) ;
 int UNIT_BINDS_TO ;
 int UNIT_DEPENDENCY_FILE ;
 int assert (TYPE_1__*) ;
 scalar_t__ streq (int ,char*) ;
 char* strjoina (char*,int ) ;
 int unit_add_node_dependency (int ,char*,int ,int ) ;

__attribute__((used)) static int socket_add_device_dependencies(Socket *s) {
        char *t;

        assert(s);

        if (!s->bind_to_device || streq(s->bind_to_device, "lo"))
                return 0;

        t = strjoina("/sys/subsystem/net/devices/", s->bind_to_device);
        return unit_add_node_dependency(UNIT(s), t, UNIT_BINDS_TO, UNIT_DEPENDENCY_FILE);
}
