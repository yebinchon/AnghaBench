
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ user; scalar_t__ group; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_1__ DynamicCreds ;


 int assert (TYPE_1__*) ;
 int dynamic_user_acquire (TYPE_1__*,char const*,scalar_t__*) ;
 scalar_t__ dynamic_user_ref (scalar_t__) ;
 scalar_t__ dynamic_user_unref (scalar_t__) ;
 scalar_t__ streq_ptr (char const*,char const*) ;

int dynamic_creds_acquire(DynamicCreds *creds, Manager *m, const char *user, const char *group) {
        bool acquired = 0;
        int r;

        assert(creds);
        assert(m);





        if (!creds->user && user) {
                r = dynamic_user_acquire(m, user, &creds->user);
                if (r < 0)
                        return r;

                acquired = 1;
        }

        if (!creds->group) {

                if (creds->user && (!group || streq_ptr(user, group)))
                        creds->group = dynamic_user_ref(creds->user);
                else {
                        r = dynamic_user_acquire(m, group, &creds->group);
                        if (r < 0) {
                                if (acquired)
                                        creds->user = dynamic_user_unref(creds->user);
                                return r;
                        }
                }
        }

        return 0;
}
