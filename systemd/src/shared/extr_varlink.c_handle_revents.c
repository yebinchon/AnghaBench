
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int connecting; int got_pollhup; } ;
typedef TYPE_1__ Varlink ;


 int FLAGS_SET (int,int) ;
 int POLLHUP ;
 int POLLOUT ;
 int assert (TYPE_1__*) ;
 int varlink_log (TYPE_1__*,char*) ;

__attribute__((used)) static void handle_revents(Varlink *v, int revents) {
        assert(v);

        if (v->connecting) {



                if ((revents & (POLLOUT|POLLHUP)) == 0)
                        return;

                varlink_log(v, "Anynchronous connection completed.");
                v->connecting = 0;
        } else {




                if (!FLAGS_SET(revents, POLLHUP))
                        return;

                varlink_log(v, "Got POLLHUP from socket.");
                v->got_pollhup = 1;
        }
}
