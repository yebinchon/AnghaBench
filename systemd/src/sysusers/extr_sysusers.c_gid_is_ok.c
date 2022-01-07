
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;
struct group {int dummy; } ;
typedef scalar_t__ gid_t ;


 int ENOENT ;
 int GID_TO_PTR (scalar_t__) ;
 int IN_SET (int,int ,int ) ;
 int UID_TO_PTR (scalar_t__) ;
 int arg_root ;
 int database_by_gid ;
 int database_by_uid ;
 int errno ;
 struct group* getgrgid (scalar_t__) ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ hashmap_contains (int ,int ) ;
 scalar_t__ ordered_hashmap_get (int ,int ) ;
 int todo_gids ;
 int todo_uids ;

__attribute__((used)) static int gid_is_ok(gid_t gid) {
        struct group *g;
        struct passwd *p;

        if (ordered_hashmap_get(todo_gids, GID_TO_PTR(gid)))
                return 0;


        if (ordered_hashmap_get(todo_uids, UID_TO_PTR(gid)))
                return 0;

        if (hashmap_contains(database_by_gid, GID_TO_PTR(gid)))
                return 0;

        if (hashmap_contains(database_by_uid, UID_TO_PTR(gid)))
                return 0;

        if (!arg_root) {
                errno = 0;
                g = getgrgid(gid);
                if (g)
                        return 0;
                if (!IN_SET(errno, 0, ENOENT))
                        return -errno;

                errno = 0;
                p = getpwuid((uid_t) gid);
                if (p)
                        return 0;
                if (!IN_SET(errno, 0, ENOENT))
                        return -errno;
        }

        return 1;
}
