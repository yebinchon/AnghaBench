
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int ) ;
 int hostname_cleanup (char*) ;
 int isempty (int ) ;
 char* strdupa (char*) ;
 int streq (int ,char*) ;

__attribute__((used)) static void test_hostname_cleanup(void) {
        char *s;

        s = strdupa("foobar");
        assert_se(streq(hostname_cleanup(s), "foobar"));
        s = strdupa("foobar.com");
        assert_se(streq(hostname_cleanup(s), "foobar.com"));
        s = strdupa("foobar.com.");
        assert_se(streq(hostname_cleanup(s), "foobar.com"));
        s = strdupa("foo-bar.-com-.");
        assert_se(streq(hostname_cleanup(s), "foo-bar.com"));
        s = strdupa("foo-bar-.-com-.");
        assert_se(streq(hostname_cleanup(s), "foo-bar--com"));
        s = strdupa("--foo-bar.-com");
        assert_se(streq(hostname_cleanup(s), "foo-bar.com"));
        s = strdupa("fooBAR");
        assert_se(streq(hostname_cleanup(s), "fooBAR"));
        s = strdupa("fooBAR.com");
        assert_se(streq(hostname_cleanup(s), "fooBAR.com"));
        s = strdupa("fooBAR.");
        assert_se(streq(hostname_cleanup(s), "fooBAR"));
        s = strdupa("fooBAR.com.");
        assert_se(streq(hostname_cleanup(s), "fooBAR.com"));
        s = strdupa("fööbar");
        assert_se(streq(hostname_cleanup(s), "fbar"));
        s = strdupa("");
        assert_se(isempty(hostname_cleanup(s)));
        s = strdupa(".");
        assert_se(isempty(hostname_cleanup(s)));
        s = strdupa("..");
        assert_se(isempty(hostname_cleanup(s)));
        s = strdupa("foobar.");
        assert_se(streq(hostname_cleanup(s), "foobar"));
        s = strdupa(".foobar");
        assert_se(streq(hostname_cleanup(s), "foobar"));
        s = strdupa("foo..bar");
        assert_se(streq(hostname_cleanup(s), "foo.bar"));
        s = strdupa("foo.bar..");
        assert_se(streq(hostname_cleanup(s), "foo.bar"));
        s = strdupa("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        assert_se(streq(hostname_cleanup(s), "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"));
        s = strdupa("xxxx........xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        assert_se(streq(hostname_cleanup(s), "xxxx.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"));
}
