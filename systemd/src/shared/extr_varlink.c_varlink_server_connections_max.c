
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rlimit {int rlim_cur; } ;
struct TYPE_3__ {int connections_max; } ;
typedef TYPE_1__ VarlinkServer ;


 int RLIMIT_NOFILE ;
 int VARLINK_DEFAULT_CONNECTIONS_MAX ;
 int assert_se (int) ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

unsigned varlink_server_connections_max(VarlinkServer *s) {
        struct rlimit rl;


        if (s)
                return s->connections_max;

        assert_se(getrlimit(RLIMIT_NOFILE, &rl) >= 0);


        if (VARLINK_DEFAULT_CONNECTIONS_MAX > rl.rlim_cur / 4 * 3)
                return rl.rlim_cur / 4 * 3;

        return VARLINK_DEFAULT_CONNECTIONS_MAX;
}
