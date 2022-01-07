
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int VarlinkServer ;
typedef int Varlink ;


 scalar_t__ UID_INVALID ;
 int assert (int *) ;
 int assert_se (int) ;
 scalar_t__ getuid () ;
 scalar_t__ varlink_get_peer_uid (int *,scalar_t__*) ;

__attribute__((used)) static int on_connect(VarlinkServer *s, Varlink *link, void *userdata) {
        uid_t uid = UID_INVALID;

        assert(s);
        assert(link);

        assert_se(varlink_get_peer_uid(link, &uid) >= 0);
        assert_se(getuid() == uid);

        return 0;
}
