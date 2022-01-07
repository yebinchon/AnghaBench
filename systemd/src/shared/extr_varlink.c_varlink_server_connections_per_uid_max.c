
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connections_per_uid_max; } ;
typedef TYPE_1__ VarlinkServer ;


 unsigned int VARLINK_DEFAULT_CONNECTIONS_PER_UID_MAX ;
 unsigned int varlink_server_connections_max (int *) ;

unsigned varlink_server_connections_per_uid_max(VarlinkServer *s) {
        unsigned m;

        if (s)
                return s->connections_per_uid_max;


        m = varlink_server_connections_max(((void*)0));
        if (VARLINK_DEFAULT_CONNECTIONS_PER_UID_MAX > m)
                return m / 4 * 3;

        return VARLINK_DEFAULT_CONNECTIONS_PER_UID_MAX;
}
