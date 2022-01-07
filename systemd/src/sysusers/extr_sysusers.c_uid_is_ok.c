
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct passwd {int dummy; } ;
struct group {char const* gr_name; } ;
typedef int gid_t ;
struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ Item ;


 int ENOENT ;
 int GID_TO_PTR (scalar_t__) ;
 int IN_SET (int,int ,int ) ;
 int UID_TO_PTR (scalar_t__) ;
 int arg_root ;
 int database_by_gid ;
 int database_by_uid ;
 int errno ;
 struct group* getgrgid (int ) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ hashmap_contains (int ,int ) ;
 char* hashmap_get (int ,int ) ;
 TYPE_1__* ordered_hashmap_get (int ,int ) ;
 int streq (char const*,char const*) ;
 int todo_gids ;
 int todo_uids ;

__attribute__((used)) static int uid_is_ok(uid_t uid, const char *name, bool check_with_gid) {
        struct passwd *p;
        struct group *g;
        const char *n;
        Item *i;


        if (ordered_hashmap_get(todo_uids, UID_TO_PTR(uid)))
                return 0;



        if (check_with_gid) {
                i = ordered_hashmap_get(todo_gids, GID_TO_PTR(uid));
                if (i && !streq(i->name, name))
                        return 0;
        }


        if (hashmap_contains(database_by_uid, UID_TO_PTR(uid)))
                return 0;

        if (check_with_gid) {
                n = hashmap_get(database_by_gid, GID_TO_PTR(uid));
                if (n && !streq(n, name))
                        return 0;
        }


        if (!arg_root) {
                errno = 0;
                p = getpwuid(uid);
                if (p)
                        return 0;
                if (!IN_SET(errno, 0, ENOENT))
                        return -errno;

                if (check_with_gid) {
                        errno = 0;
                        g = getgrgid((gid_t) uid);
                        if (g) {
                                if (!streq(g->gr_name, name))
                                        return 0;
                        } else if (!IN_SET(errno, 0, ENOENT))
                                return -errno;
                }
        }

        return 1;
}
