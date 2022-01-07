
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef int gid_t ;
struct TYPE_4__ {char* user; } ;
typedef TYPE_1__ ExecContext ;


 int USER_CREDS_CLEAN ;
 int assert (TYPE_1__ const*) ;
 int get_user_creds (char const**,int *,int *,char const**,char const**,int ) ;

__attribute__((used)) static int get_fixed_user(const ExecContext *c, const char **user,
                          uid_t *uid, gid_t *gid,
                          const char **home, const char **shell) {
        int r;
        const char *name;

        assert(c);

        if (!c->user)
                return 0;




        name = c->user;
        r = get_user_creds(&name, uid, gid, home, shell, USER_CREDS_CLEAN);
        if (r < 0)
                return r;

        *user = name;
        return 0;
}
