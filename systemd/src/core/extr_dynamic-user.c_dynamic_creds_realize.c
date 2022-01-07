
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ user; scalar_t__ group; } ;
typedef TYPE_1__ uid_t ;
typedef TYPE_1__ gid_t ;
typedef TYPE_1__ DynamicCreds ;


 TYPE_1__ GID_INVALID ;
 TYPE_1__ UID_INVALID ;
 int assert (TYPE_1__*) ;
 int dynamic_user_realize (scalar_t__,char**,TYPE_1__*,TYPE_1__*,int) ;

int dynamic_creds_realize(DynamicCreds *creds, char **suggested_paths, uid_t *uid, gid_t *gid) {
        uid_t u = UID_INVALID;
        gid_t g = GID_INVALID;
        int r;

        assert(creds);
        assert(uid);
        assert(gid);



        if (creds->user) {
                r = dynamic_user_realize(creds->user, suggested_paths, &u, &g, 1);
                if (r < 0)
                        return r;
        }

        if (creds->group && creds->group != creds->user) {
                r = dynamic_user_realize(creds->group, suggested_paths, ((void*)0), &g, 0);
                if (r < 0)
                        return r;
        }

        *uid = u;
        *gid = g;
        return 0;
}
