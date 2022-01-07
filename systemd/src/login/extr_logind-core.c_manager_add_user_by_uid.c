
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_dir; int pw_name; int pw_gid; } ;
typedef int User ;
typedef int Manager ;


 int ENOENT ;
 int assert (int *) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 struct passwd* getpwuid (int ) ;
 int manager_add_user (int *,int ,int ,int ,int ,int **) ;

int manager_add_user_by_uid(Manager *m, uid_t uid, User **ret_user) {
        struct passwd *p;

        assert(m);

        errno = 0;
        p = getpwuid(uid);
        if (!p)
                return errno_or_else(ENOENT);

        return manager_add_user(m, uid, p->pw_gid, p->pw_name, p->pw_dir, ret_user);
}
