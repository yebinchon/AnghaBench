
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int IPPROTO_UDP ;
 int SOCK_RAW ;
 int assert_se (int) ;
 scalar_t__ drop_privileges (scalar_t__,scalar_t__,int ) ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 int safe_close (int) ;
 int show_capabilities () ;
 int socket (int ,int ,int ) ;
 int test_flags ;
 scalar_t__ test_gid ;
 scalar_t__ test_uid ;

__attribute__((used)) static void test_drop_privileges_dontkeep_net_raw(void) {
        int sock;

        sock = socket(AF_INET, SOCK_RAW, IPPROTO_UDP);
        assert_se(sock >= 0);
        safe_close(sock);

        assert_se(drop_privileges(test_uid, test_gid, test_flags) >= 0);
        assert_se(getuid() == test_uid);
        assert_se(getgid() == test_gid);
        show_capabilities();

        sock = socket(AF_INET, SOCK_RAW, IPPROTO_UDP);
        assert_se(sock < 0);
}
