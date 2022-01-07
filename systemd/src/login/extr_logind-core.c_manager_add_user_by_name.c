
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int User ;
typedef char const Manager ;


 int assert (char const*) ;
 int get_user_creds (char const**,int *,int *,char const**,int *,int ) ;
 int manager_add_user (char const*,int ,int ,char const*,char const*,int **) ;

int manager_add_user_by_name(
                Manager *m,
                const char *name,
                User **ret_user) {

        const char *home = ((void*)0);
        uid_t uid;
        gid_t gid;
        int r;

        assert(m);
        assert(name);

        r = get_user_creds(&name, &uid, &gid, &home, ((void*)0), 0);
        if (r < 0)
                return r;

        return manager_add_user(m, uid, gid, name, home, ret_user);
}
