
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int started; int stopping; int timestamp; int name; } ;
typedef TYPE_1__ User ;


 int assert (TYPE_1__*) ;
 int dual_timestamp_get (int *) ;
 int dual_timestamp_is_set (int *) ;
 int log_debug (char*,int ) ;
 int user_save (TYPE_1__*) ;
 int user_save_internal (TYPE_1__*) ;
 int user_send_signal (TYPE_1__*,int) ;
 int user_start_service (TYPE_1__*) ;

int user_start(User *u) {
        assert(u);

        if (u->started && !u->stopping)
                return 0;





        u->stopping = 0;

        if (!u->started)
                log_debug("Starting services for new user %s.", u->name);



        user_save_internal(u);


        user_start_service(u);

        if (!u->started) {
                if (!dual_timestamp_is_set(&u->timestamp))
                        dual_timestamp_get(&u->timestamp);
                user_send_signal(u, 1);
                u->started = 1;
        }


        user_save(u);

        return 0;
}
