
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int hostname_is_valid (char*,int) ;

__attribute__((used)) static void test_hostname_is_valid(void) {
        assert_se(hostname_is_valid("foobar", 0));
        assert_se(hostname_is_valid("foobar.com", 0));
        assert_se(!hostname_is_valid("foobar.com.", 0));
        assert_se(hostname_is_valid("fooBAR", 0));
        assert_se(hostname_is_valid("fooBAR.com", 0));
        assert_se(!hostname_is_valid("fooBAR.", 0));
        assert_se(!hostname_is_valid("fooBAR.com.", 0));
        assert_se(!hostname_is_valid("fööbar", 0));
        assert_se(!hostname_is_valid("", 0));
        assert_se(!hostname_is_valid(".", 0));
        assert_se(!hostname_is_valid("..", 0));
        assert_se(!hostname_is_valid("foobar.", 0));
        assert_se(!hostname_is_valid(".foobar", 0));
        assert_se(!hostname_is_valid("foo..bar", 0));
        assert_se(!hostname_is_valid("foo.bar..", 0));
        assert_se(!hostname_is_valid("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", 0));
        assert_se(!hostname_is_valid("au-xph5-rvgrdsb5hcxc-47et3a5vvkrc-server-wyoz4elpdpe3.openstack.local", 0));

        assert_se(hostname_is_valid("foobar", 1));
        assert_se(hostname_is_valid("foobar.com", 1));
        assert_se(hostname_is_valid("foobar.com.", 1));
        assert_se(hostname_is_valid("fooBAR", 1));
        assert_se(hostname_is_valid("fooBAR.com", 1));
        assert_se(!hostname_is_valid("fooBAR.", 1));
        assert_se(hostname_is_valid("fooBAR.com.", 1));
        assert_se(!hostname_is_valid("fööbar", 1));
        assert_se(!hostname_is_valid("", 1));
        assert_se(!hostname_is_valid(".", 1));
        assert_se(!hostname_is_valid("..", 1));
        assert_se(!hostname_is_valid("foobar.", 1));
        assert_se(!hostname_is_valid(".foobar", 1));
        assert_se(!hostname_is_valid("foo..bar", 1));
        assert_se(!hostname_is_valid("foo.bar..", 1));
        assert_se(!hostname_is_valid("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", 1));
}
